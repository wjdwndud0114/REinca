.class public Lcom/tnkfactory/ad/TnkStyle;
.super Ljava/lang/Object;


# static fields
.field public static AdBanner:Lcom/tnkfactory/ad/TnkAdBannerStyle;

.field public static AdInterstitial:Lcom/tnkfactory/ad/TnkAdInterstitialStyle;

.field public static AdVideo:Lcom/tnkfactory/ad/TnkAdVideoStyle;

.field public static AdWall:Lcom/tnkfactory/ad/TnkAdWallStyle;

.field public static FormatCurrency:Lcom/tnkfactory/ad/hc;

.field public static availableLanguages:Ljava/lang/String;

.field public static defaultLanguage:Ljava/lang/String;

.field public static resIdToastMessageCPE:I

.field public static resIdToastMessageCPI:I


# instance fields
.field public background:I

.field public backgroundColor:I

.field public height:I

.field public parent:Lcom/tnkfactory/ad/TnkStyle;

.field public textColor:I

.field public textSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lcom/tnkfactory/ad/TnkAdWallStyle;

    invoke-direct {v0}, Lcom/tnkfactory/ad/TnkAdWallStyle;-><init>()V

    sput-object v0, Lcom/tnkfactory/ad/TnkStyle;->AdWall:Lcom/tnkfactory/ad/TnkAdWallStyle;

    new-instance v0, Lcom/tnkfactory/ad/TnkAdInterstitialStyle;

    invoke-direct {v0}, Lcom/tnkfactory/ad/TnkAdInterstitialStyle;-><init>()V

    sput-object v0, Lcom/tnkfactory/ad/TnkStyle;->AdInterstitial:Lcom/tnkfactory/ad/TnkAdInterstitialStyle;

    new-instance v0, Lcom/tnkfactory/ad/TnkAdVideoStyle;

    invoke-direct {v0}, Lcom/tnkfactory/ad/TnkAdVideoStyle;-><init>()V

    sput-object v0, Lcom/tnkfactory/ad/TnkStyle;->AdVideo:Lcom/tnkfactory/ad/TnkAdVideoStyle;

    new-instance v0, Lcom/tnkfactory/ad/TnkAdBannerStyle;

    invoke-direct {v0}, Lcom/tnkfactory/ad/TnkAdBannerStyle;-><init>()V

    sput-object v0, Lcom/tnkfactory/ad/TnkStyle;->AdBanner:Lcom/tnkfactory/ad/TnkAdBannerStyle;

    const/4 v0, 0x0

    sput-object v0, Lcom/tnkfactory/ad/TnkStyle;->FormatCurrency:Lcom/tnkfactory/ad/hc;

    sput v1, Lcom/tnkfactory/ad/TnkStyle;->resIdToastMessageCPI:I

    sput v1, Lcom/tnkfactory/ad/TnkStyle;->resIdToastMessageCPE:I

    const-string v0, "en"

    sput-object v0, Lcom/tnkfactory/ad/TnkStyle;->defaultLanguage:Ljava/lang/String;

    const-string v0, "en,ko,ja,in"

    sput-object v0, Lcom/tnkfactory/ad/TnkStyle;->availableLanguages:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tnkfactory/ad/TnkStyle;->parent:Lcom/tnkfactory/ad/TnkStyle;

    iput v1, p0, Lcom/tnkfactory/ad/TnkStyle;->background:I

    iput v1, p0, Lcom/tnkfactory/ad/TnkStyle;->backgroundColor:I

    iput v1, p0, Lcom/tnkfactory/ad/TnkStyle;->textColor:I

    iput v1, p0, Lcom/tnkfactory/ad/TnkStyle;->textSize:I

    const/4 v0, -0x2

    iput v0, p0, Lcom/tnkfactory/ad/TnkStyle;->height:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tnkfactory/ad/TnkStyle;->parent:Lcom/tnkfactory/ad/TnkStyle;

    iput v1, p0, Lcom/tnkfactory/ad/TnkStyle;->background:I

    iput v1, p0, Lcom/tnkfactory/ad/TnkStyle;->backgroundColor:I

    iput v1, p0, Lcom/tnkfactory/ad/TnkStyle;->textColor:I

    iput v1, p0, Lcom/tnkfactory/ad/TnkStyle;->textSize:I

    const/4 v0, -0x2

    iput v0, p0, Lcom/tnkfactory/ad/TnkStyle;->height:I

    invoke-virtual {p0, p1}, Lcom/tnkfactory/ad/TnkStyle;->a(Landroid/os/Parcel;)V

    return-void
.end method

.method public static clear()V
    .locals 1

    new-instance v0, Lcom/tnkfactory/ad/TnkAdWallStyle;

    invoke-direct {v0}, Lcom/tnkfactory/ad/TnkAdWallStyle;-><init>()V

    sput-object v0, Lcom/tnkfactory/ad/TnkStyle;->AdWall:Lcom/tnkfactory/ad/TnkAdWallStyle;

    new-instance v0, Lcom/tnkfactory/ad/TnkAdInterstitialStyle;

    invoke-direct {v0}, Lcom/tnkfactory/ad/TnkAdInterstitialStyle;-><init>()V

    sput-object v0, Lcom/tnkfactory/ad/TnkStyle;->AdInterstitial:Lcom/tnkfactory/ad/TnkAdInterstitialStyle;

    new-instance v0, Lcom/tnkfactory/ad/TnkAdVideoStyle;

    invoke-direct {v0}, Lcom/tnkfactory/ad/TnkAdVideoStyle;-><init>()V

    sput-object v0, Lcom/tnkfactory/ad/TnkStyle;->AdVideo:Lcom/tnkfactory/ad/TnkAdVideoStyle;

    new-instance v0, Lcom/tnkfactory/ad/TnkAdBannerStyle;

    invoke-direct {v0}, Lcom/tnkfactory/ad/TnkAdBannerStyle;-><init>()V

    sput-object v0, Lcom/tnkfactory/ad/TnkStyle;->AdBanner:Lcom/tnkfactory/ad/TnkAdBannerStyle;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/tnkfactory/ad/TnkStyle;->background:I

    return v0
.end method

.method protected a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tnkfactory/ad/TnkStyle;->background:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tnkfactory/ad/TnkStyle;->backgroundColor:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tnkfactory/ad/TnkStyle;->textColor:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tnkfactory/ad/TnkStyle;->textSize:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tnkfactory/ad/TnkStyle;->height:I

    return-void
.end method

.method protected a(Landroid/widget/TextView;)V
    .locals 2

    invoke-virtual {p0}, Lcom/tnkfactory/ad/TnkStyle;->c()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/tnkfactory/ad/TnkStyle;->d()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method protected a(Landroid/view/View;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/tnkfactory/ad/TnkStyle;->a()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/tnkfactory/ad/TnkStyle;->a()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/tnkfactory/ad/TnkStyle;->b()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/tnkfactory/ad/TnkStyle;->b()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/tnkfactory/ad/TnkStyle;->a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v1}, Lcom/tnkfactory/ad/TnkStyle;->a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/tnkfactory/ad/in;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/tnkfactory/ad/TnkStyle;->backgroundColor:I

    return v0
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/TnkStyle;->parent:Lcom/tnkfactory/ad/TnkStyle;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tnkfactory/ad/TnkStyle;->textColor:I

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/tnkfactory/ad/TnkStyle;->textColor:I

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/tnkfactory/ad/TnkStyle;->parent:Lcom/tnkfactory/ad/TnkStyle;

    invoke-virtual {v0}, Lcom/tnkfactory/ad/TnkStyle;->c()I

    move-result v0

    goto :goto_0
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/TnkStyle;->parent:Lcom/tnkfactory/ad/TnkStyle;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tnkfactory/ad/TnkStyle;->textSize:I

    if-lez v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/tnkfactory/ad/TnkStyle;->textSize:I

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/tnkfactory/ad/TnkStyle;->parent:Lcom/tnkfactory/ad/TnkStyle;

    invoke-virtual {v0}, Lcom/tnkfactory/ad/TnkStyle;->d()I

    move-result v0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/tnkfactory/ad/TnkStyle;->background:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/tnkfactory/ad/TnkStyle;->backgroundColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/tnkfactory/ad/TnkStyle;->textColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/tnkfactory/ad/TnkStyle;->textSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/tnkfactory/ad/TnkStyle;->height:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
