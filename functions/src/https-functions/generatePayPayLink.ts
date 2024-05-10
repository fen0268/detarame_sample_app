import * as paypay from '@paypayopa/paypayopa-sdk-node'
import * as admin from 'firebase-admin'
import * as functions from 'firebase-functions'
import { PurchaseData } from '../interfaces/purchaseData'
import { ResponseBody } from '../interfaces/responseBody'

admin.initializeApp()

export const generatePayPayLink = functions.https.onRequest(
  async (req, res) => {
    const apiKey: string = functions.config().paypay.api
    const apiSecret: string = functions.config().paypay.secret
    const merchantId: string = functions.config().paypay.merchant

    paypay.Configure({
      clientId: apiKey,
      clientSecret: apiSecret,
      merchantId: merchantId,
      productionMode: false
    }) 

    const purchaseData: PurchaseData = req.body.purchaseData

    const payload = {
      merchantPaymentId: purchaseData.merchantPaymentId,
      amount: {
        amount: purchaseData.price,
        currency: 'JPY'
      },
      orderDescription: purchaseData.description,
      codeType: 'ORDER_QR',
      redirectUrl: 'detarameSo://callback/merchandise'
    }

    paypay.QRCodeCreate(payload, async (response) => {
      if (response.STATUS == 201 && 'BODY' in response) {
        const responseBody = response.BODY
        if (responseBody != null) {
          const transitionUrl = (responseBody as ResponseBody).data.url
          res.json({ transitionUrl })
        } else {
          res.json({ error: 'responseBody is null' })
          throw new Error('responseBody is null')
        }
      } else {
        res.json({ error: 'Failed to create QR Code' })
        throw new Error('Failed to create QR Code')
      }
    })
  }
)
