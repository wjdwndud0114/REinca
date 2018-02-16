.class public final Lcom/facebook/share/model/ShareLinkContent$Builder;
.super Lcom/facebook/share/model/ShareContent$Builder;
.source "ShareLinkContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/model/ShareLinkContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/share/model/ShareContent$Builder",
        "<",
        "Lcom/facebook/share/model/ShareLinkContent;",
        "Lcom/facebook/share/model/ShareLinkContent$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private contentDescription:Ljava/lang/String;

.field private contentTitle:Ljava/lang/String;

.field private imageUrl:Landroid/net/Uri;

.field private quote:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/facebook/share/model/ShareContent$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/share/model/ShareLinkContent$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/share/model/ShareLinkContent$Builder;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/facebook/share/model/ShareLinkContent$Builder;->contentDescription:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/facebook/share/model/ShareLinkContent$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/share/model/ShareLinkContent$Builder;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/facebook/share/model/ShareLinkContent$Builder;->contentTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/facebook/share/model/ShareLinkContent$Builder;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/share/model/ShareLinkContent$Builder;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/facebook/share/model/ShareLinkContent$Builder;->imageUrl:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$300(Lcom/facebook/share/model/ShareLinkContent$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/share/model/ShareLinkContent$Builder;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/facebook/share/model/ShareLinkContent$Builder;->quote:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/facebook/share/model/ShareLinkContent;
    .locals 2

    .prologue
    .line 170
    new-instance v0, Lcom/facebook/share/model/ShareLinkContent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/share/model/ShareLinkContent;-><init>(Lcom/facebook/share/model/ShareLinkContent$Builder;Lcom/facebook/share/model/ShareLinkContent$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareLinkContent$Builder;->build()Lcom/facebook/share/model/ShareLinkContent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readFrom(Lcom/facebook/share/model/ShareContent;)Lcom/facebook/share/model/ShareContent$Builder;
    .locals 1

    .prologue
    .line 120
    check-cast p1, Lcom/facebook/share/model/ShareLinkContent;

    invoke-virtual {p0, p1}, Lcom/facebook/share/model/ShareLinkContent$Builder;->readFrom(Lcom/facebook/share/model/ShareLinkContent;)Lcom/facebook/share/model/ShareLinkContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public readFrom(Lcom/facebook/share/model/ShareLinkContent;)Lcom/facebook/share/model/ShareLinkContent$Builder;
    .locals 2
    .param p1, "model"    # Lcom/facebook/share/model/ShareLinkContent;

    .prologue
    .line 175
    if-nez p1, :cond_0

    .line 183
    .end local p0    # "this":Lcom/facebook/share/model/ShareLinkContent$Builder;
    :goto_0
    return-object p0

    .line 179
    .restart local p0    # "this":Lcom/facebook/share/model/ShareLinkContent$Builder;
    :cond_0
    invoke-super {p0, p1}, Lcom/facebook/share/model/ShareContent$Builder;->readFrom(Lcom/facebook/share/model/ShareContent;)Lcom/facebook/share/model/ShareContent$Builder;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/model/ShareLinkContent$Builder;

    .line 180
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareLinkContent;->getContentDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setContentDescription(Ljava/lang/String;)Lcom/facebook/share/model/ShareLinkContent$Builder;

    move-result-object v0

    .line 181
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareLinkContent;->getImageUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setImageUrl(Landroid/net/Uri;)Lcom/facebook/share/model/ShareLinkContent$Builder;

    move-result-object v0

    .line 182
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareLinkContent;->getContentTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setContentTitle(Ljava/lang/String;)Lcom/facebook/share/model/ShareLinkContent$Builder;

    move-result-object v0

    .line 183
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareLinkContent;->getQuote()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setQuote(Ljava/lang/String;)Lcom/facebook/share/model/ShareLinkContent$Builder;

    move-result-object p0

    goto :goto_0
.end method

.method public bridge synthetic readFrom(Lcom/facebook/share/model/ShareModel;)Lcom/facebook/share/model/ShareModelBuilder;
    .locals 1

    .prologue
    .line 120
    check-cast p1, Lcom/facebook/share/model/ShareLinkContent;

    invoke-virtual {p0, p1}, Lcom/facebook/share/model/ShareLinkContent$Builder;->readFrom(Lcom/facebook/share/model/ShareLinkContent;)Lcom/facebook/share/model/ShareLinkContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setContentDescription(Ljava/lang/String;)Lcom/facebook/share/model/ShareLinkContent$Builder;
    .locals 0
    .param p1, "contentDescription"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 134
    iput-object p1, p0, Lcom/facebook/share/model/ShareLinkContent$Builder;->contentDescription:Ljava/lang/String;

    .line 135
    return-object p0
.end method

.method public setContentTitle(Ljava/lang/String;)Lcom/facebook/share/model/ShareLinkContent$Builder;
    .locals 0
    .param p1, "contentTitle"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 144
    iput-object p1, p0, Lcom/facebook/share/model/ShareLinkContent$Builder;->contentTitle:Ljava/lang/String;

    .line 145
    return-object p0
.end method

.method public setImageUrl(Landroid/net/Uri;)Lcom/facebook/share/model/ShareLinkContent$Builder;
    .locals 0
    .param p1, "imageUrl"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 154
    iput-object p1, p0, Lcom/facebook/share/model/ShareLinkContent$Builder;->imageUrl:Landroid/net/Uri;

    .line 155
    return-object p0
.end method

.method public setQuote(Ljava/lang/String;)Lcom/facebook/share/model/ShareLinkContent$Builder;
    .locals 0
    .param p1, "quote"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 164
    iput-object p1, p0, Lcom/facebook/share/model/ShareLinkContent$Builder;->quote:Ljava/lang/String;

    .line 165
    return-object p0
.end method
