.class public Lcom/igaworks/adpopcorn/api/APIResult$Code;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/igaworks/adpopcorn/api/APIResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Code"
.end annotation


# static fields
.field public static final ALREADY_INSTALLED_APP:I = 0x6a

.field public static final ALREADY_PARTICIPATED_CAMPAIGN:I = 0x6b

.field public static final DAILY_CAP_EXCEEDED:I = 0x70

.field public static final EMULATOR_OR_ROOTING_DEVICE:I = 0x68

.field public static final GET_OFFER_LIST_FAILED:I = 0x65

.field public static final GET_VIDEO_INFO_FAILED:I = 0x69

.field public static final INVALID_CAMPAIGN_LIST:I = 0x6f

.field public static final NO_REQUIRED_PERMISSION:I = 0x67

.field public static final PARTICIPATED_FAILED:I = 0x6c

.field public static final PARTICIPATE_SUCCESS:I = 0xa

.field public static final REWARD_PAYMENT_FAILED:I = 0x6d

.field public static final REWARD_PAYMENT_SUCCESS:I = 0xb

.field public static final SUCCESS:I = 0x1

.field public static final TIMEOUT:I = 0x66

.field public static final UNKNOWN_SERVER_ERROR:I = 0x64

.field public static final UPCOMING_CAMPAIGN:I = 0x6e


# instance fields
.field final synthetic this$0:Lcom/igaworks/adpopcorn/api/APIResult;


# direct methods
.method public constructor <init>(Lcom/igaworks/adpopcorn/api/APIResult;)V
    .locals 0

    iput-object p1, p0, Lcom/igaworks/adpopcorn/api/APIResult$Code;->this$0:Lcom/igaworks/adpopcorn/api/APIResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
