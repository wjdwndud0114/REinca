.class public Lcom/igaworks/adpopcorn/cores/common/APVideoError;
.super Ljava/lang/Object;


# static fields
.field public static final ADID_ABUSING:I = 0x1f4

.field public static final ALL_LOADED_VIDEO_SHOWN:I = 0x138d

.field public static final ALL_LOADED_VIDEO_SHOWN_MESSAGE:Ljava/lang/String; = "All loaded video shown"

.field public static final ALREADY_COMPLETED_CAMPAIGN:I = 0x7d0

.field public static final ALREADY_COMPLETED_CAMPAIGN_MESSAGE:Ljava/lang/String; = "Already completed campaign"

.field public static final CAN_NOT_FIND_AVAILABLE_CAMPAIGN:I = 0x3e8

.field public static final EXCEPTION:I = 0xc8

.field public static final INVALID_MEDIA_KEY:I = 0x578

.field public static final SERVER_TIMEOUT:I = 0x1388

.field public static final SERVER_TIMEOUT_MESSAGE:Ljava/lang/String; = "Server Timeout"

.field public static final TERMINATED_OR_INVALID_CAMPAIGN:I = 0x3e7

.field public static final TERMINATED_OR_INVALID_CAMPAIGN_MESSAGE:Ljava/lang/String; = "Terminated or invalid campaign"

.field public static final UNKNWON_EXCEPTION:I = 0x270f

.field public static final UNKNWON_EXCEPTION_MESSAGE:Ljava/lang/String; = "Unknwon excepton"

.field public static final USER_IDENTIFIER_MISSING:I = 0x8ca


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/common/APVideoError;->b:Ljava/lang/String;

    iput p1, p0, Lcom/igaworks/adpopcorn/cores/common/APVideoError;->a:I

    iput-object p2, p0, Lcom/igaworks/adpopcorn/cores/common/APVideoError;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    iget v0, p0, Lcom/igaworks/adpopcorn/cores/common/APVideoError;->a:I

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/common/APVideoError;->b:Ljava/lang/String;

    return-object v0
.end method

.method public setErrorCode(I)V
    .locals 0

    iput p1, p0, Lcom/igaworks/adpopcorn/cores/common/APVideoError;->a:I

    return-void
.end method

.method public setErrorMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/igaworks/adpopcorn/cores/common/APVideoError;->b:Ljava/lang/String;

    return-void
.end method
