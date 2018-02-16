.class public Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;
.super Ljava/lang/Object;
.source "IgawCommerce.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/igaworks/commerce/IgawCommerce;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IgawSharingChannel"
.end annotation


# static fields
.field public static final ETC:Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;

.field public static final Email:Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;

.field public static final Facebook:Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;

.field public static final KakaoStory:Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;

.field public static final KakaoTalk:Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;

.field public static final Line:Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;

.field public static final QQ:Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;

.field public static final SMS:Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;

.field public static final WeChat:Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;

.field public static final copyUrl:Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;

.field public static final whatsApp:Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;


# instance fields
.field private channel:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 389
    new-instance v0, Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;

    const-string v1, "Facebook"

    invoke-direct {v0, v1}, Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;->Facebook:Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;

    .line 390
    new-instance v0, Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;

    const-string v1, "KakaoTalk"

    invoke-direct {v0, v1}, Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;->KakaoTalk:Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;

    .line 391
    new-instance v0, Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;

    const-string v1, "KakaoStory"

    invoke-direct {v0, v1}, Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;->KakaoStory:Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;

    .line 392
    new-instance v0, Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;

    const-string v1, "Line"

    invoke-direct {v0, v1}, Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;->Line:Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;

    .line 393
    new-instance v0, Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;

    const-string v1, "whatsApp"

    invoke-direct {v0, v1}, Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;->whatsApp:Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;

    .line 394
    new-instance v0, Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;

    const-string v1, "QQ"

    invoke-direct {v0, v1}, Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;->QQ:Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;

    .line 395
    new-instance v0, Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;

    const-string v1, "WeChat"

    invoke-direct {v0, v1}, Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;->WeChat:Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;

    .line 396
    new-instance v0, Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;

    const-string v1, "SMS"

    invoke-direct {v0, v1}, Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;->SMS:Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;

    .line 397
    new-instance v0, Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;

    const-string v1, "Email"

    invoke-direct {v0, v1}, Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;->Email:Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;

    .line 398
    new-instance v0, Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;

    const-string v1, "copyUrl"

    invoke-direct {v0, v1}, Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;->copyUrl:Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;

    .line 399
    new-instance v0, Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;

    const-string v1, "ETC"

    invoke-direct {v0, v1}, Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;->ETC:Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "channel"    # Ljava/lang/String;

    .prologue
    .line 404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 405
    iput-object p1, p0, Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;->channel:Ljava/lang/String;

    .line 406
    return-void
.end method

.method public static getChannelByChannelCode(Ljava/lang/String;)Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;
    .locals 1
    .param p0, "channel"    # Ljava/lang/String;

    .prologue
    .line 420
    sget-object v0, Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;->Facebook:Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;

    invoke-virtual {v0}, Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;->getChannel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    sget-object v0, Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;->Facebook:Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;

    .line 466
    :goto_0
    return-object v0

    .line 424
    :cond_0
    sget-object v0, Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;->KakaoTalk:Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;

    invoke-virtual {v0}, Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;->getChannel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 426
    sget-object v0, Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;->KakaoTalk:Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;

    goto :goto_0

    .line 428
    :cond_1
    sget-object v0, Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;->KakaoStory:Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;

    invoke-virtual {v0}, Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;->getChannel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 430
    sget-object v0, Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;->KakaoStory:Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;

    goto :goto_0

    .line 432
    :cond_2
    sget-object v0, Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;->Line:Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;

    invoke-virtual {v0}, Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;->getChannel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 434
    sget-object v0, Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;->Line:Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;

    goto :goto_0

    .line 436
    :cond_3
    sget-object v0, Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;->whatsApp:Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;

    invoke-virtual {v0}, Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;->getChannel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 438
    sget-object v0, Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;->whatsApp:Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;

    goto :goto_0

    .line 440
    :cond_4
    sget-object v0, Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;->QQ:Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;

    invoke-virtual {v0}, Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;->getChannel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 442
    sget-object v0, Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;->QQ:Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;

    goto :goto_0

    .line 444
    :cond_5
    sget-object v0, Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;->WeChat:Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;

    invoke-virtual {v0}, Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;->getChannel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 446
    sget-object v0, Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;->WeChat:Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;

    goto :goto_0

    .line 448
    :cond_6
    sget-object v0, Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;->SMS:Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;

    invoke-virtual {v0}, Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;->getChannel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 450
    sget-object v0, Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;->SMS:Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;

    goto :goto_0

    .line 452
    :cond_7
    sget-object v0, Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;->Email:Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;

    invoke-virtual {v0}, Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;->getChannel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 454
    sget-object v0, Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;->Email:Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;

    goto :goto_0

    .line 456
    :cond_8
    sget-object v0, Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;->copyUrl:Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;

    invoke-virtual {v0}, Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;->getChannel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 458
    sget-object v0, Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;->copyUrl:Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;

    goto/16 :goto_0

    .line 460
    :cond_9
    sget-object v0, Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;->ETC:Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;

    invoke-virtual {v0}, Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;->getChannel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 462
    sget-object v0, Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;->ETC:Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;

    goto/16 :goto_0

    .line 466
    :cond_a
    new-instance v0, Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;

    invoke-direct {v0, p0}, Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public getChannel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;->channel:Ljava/lang/String;

    return-object v0
.end method

.method public setChannel(Ljava/lang/String;)V
    .locals 0
    .param p1, "channel"    # Ljava/lang/String;

    .prologue
    .line 415
    iput-object p1, p0, Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;->channel:Ljava/lang/String;

    .line 416
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/igaworks/commerce/IgawCommerce$IgawSharingChannel;->channel:Ljava/lang/String;

    return-object v0
.end method
