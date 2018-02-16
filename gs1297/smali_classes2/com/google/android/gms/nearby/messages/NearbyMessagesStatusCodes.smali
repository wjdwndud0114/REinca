.class public Lcom/google/android/gms/nearby/messages/NearbyMessagesStatusCodes;
.super Lcom/google/android/gms/common/api/CommonStatusCodes;


# static fields
.field public static final APP_NOT_OPTED_IN:I = 0xaf2

.field public static final APP_QUOTA_LIMIT_REACHED:I = 0xaf4

.field public static final BLE_ADVERTISING_UNSUPPORTED:I = 0xb05

.field public static final BLE_SCANNING_UNSUPPORTED:I = 0xb06

.field public static final BLUETOOTH_OFF:I = 0xb04

.field public static final DISALLOWED_CALLING_CONTEXT:I = 0xaf3

.field public static final FORBIDDEN:I = 0xaf6

.field public static final MISSING_PERMISSIONS:I = 0xaf7

.field public static final NOT_AUTHORIZED:I = 0xaf5

.field public static final TOO_MANY_PENDING_INTENTS:I = 0xaf1


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/CommonStatusCodes;-><init>()V

    return-void
.end method

.method public static getStatusCodeString(I)Ljava/lang/String;
    .locals 1

    sparse-switch p0, :sswitch_data_0

    invoke-static {p0}, Lcom/google/android/gms/common/api/CommonStatusCodes;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "TOO_MANY_PENDING_INTENTS"

    goto :goto_0

    :sswitch_1
    const-string v0, "APP_NOT_OPTED_IN"

    goto :goto_0

    :sswitch_2
    const-string v0, "DISALLOWED_CALLING_CONTEXT"

    goto :goto_0

    :sswitch_3
    const-string v0, "BLUETOOTH_OFF"

    goto :goto_0

    :sswitch_4
    const-string v0, "BLE_ADVERTISING_UNSUPPORTED"

    goto :goto_0

    :sswitch_5
    const-string v0, "BLE_SCANNING_UNSUPPORTED"

    goto :goto_0

    :sswitch_6
    const-string v0, "NOT_AUTHORIZED"

    goto :goto_0

    :sswitch_7
    const-string v0, "FORBIDDEN"

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0xaf1 -> :sswitch_0
        0xaf2 -> :sswitch_1
        0xaf3 -> :sswitch_2
        0xaf5 -> :sswitch_6
        0xaf6 -> :sswitch_7
        0xb04 -> :sswitch_3
        0xb05 -> :sswitch_4
        0xb06 -> :sswitch_5
    .end sparse-switch
.end method
