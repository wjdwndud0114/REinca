.class public Lcom/tnkfactory/ad/ha;
.super Ljava/lang/Object;


# static fields
.field private static aG:Lcom/tnkfactory/ad/ha;


# instance fields
.field A:Ljava/lang/String;

.field B:Ljava/lang/String;

.field C:Ljava/lang/String;

.field D:Ljava/lang/String;

.field E:Ljava/lang/String;

.field F:Ljava/lang/String;

.field G:Ljava/lang/String;

.field H:Ljava/lang/String;

.field I:Ljava/lang/String;

.field J:Ljava/lang/String;

.field K:Ljava/lang/String;

.field L:Ljava/lang/String;

.field M:Ljava/lang/String;

.field N:Ljava/lang/String;

.field O:Ljava/lang/String;

.field P:Ljava/lang/String;

.field Q:Ljava/lang/String;

.field R:Ljava/lang/String;

.field S:Ljava/lang/String;

.field T:Ljava/lang/String;

.field U:Ljava/lang/String;

.field V:Ljava/lang/String;

.field W:Ljava/lang/String;

.field X:Ljava/lang/String;

.field Y:Ljava/lang/String;

.field Z:Ljava/lang/String;

.field a:Ljava/lang/String;

.field aA:Ljava/lang/String;

.field aB:Ljava/lang/String;

.field aC:Ljava/lang/String;

.field aD:Ljava/lang/String;

.field aE:Ljava/lang/String;

.field aF:Lcom/tnkfactory/ad/hc;

.field aa:Ljava/lang/String;

.field ab:Ljava/lang/String;

.field ac:Ljava/lang/String;

.field ad:Ljava/lang/String;

.field ae:Ljava/lang/String;

.field af:Ljava/lang/String;

.field ag:Ljava/lang/String;

.field ah:Ljava/lang/String;

.field ai:Ljava/lang/String;

.field aj:Ljava/lang/String;

.field ak:Ljava/lang/String;

.field al:Ljava/lang/String;

.field am:Ljava/lang/String;

.field an:Ljava/lang/String;

.field ao:Ljava/lang/String;

.field ap:Ljava/lang/String;

.field aq:Ljava/lang/String;

.field ar:Ljava/lang/String;

.field as:Ljava/lang/String;

.field at:Ljava/lang/String;

.field au:Ljava/lang/String;

.field av:Ljava/lang/String;

.field aw:Ljava/lang/String;

.field ax:Ljava/lang/String;

.field ay:Ljava/lang/String;

.field az:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:Ljava/lang/String;

.field k:Ljava/lang/String;

.field l:Ljava/lang/String;

.field m:Ljava/lang/String;

.field n:Ljava/lang/String;

.field o:Ljava/lang/String;

.field p:Ljava/lang/String;

.field q:Ljava/lang/String;

.field r:Ljava/lang/String;

.field s:Ljava/lang/String;

.field t:Ljava/lang/String;

.field u:Ljava/lang/String;

.field v:Ljava/lang/String;

.field w:Ljava/lang/String;

.field x:Ljava/lang/String;

.field y:Ljava/lang/String;

.field z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tnkfactory/ad/ha;->aG:Lcom/tnkfactory/ad/ha;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tnkfactory/ad/hb;

    invoke-direct {v0, p0}, Lcom/tnkfactory/ad/hb;-><init>(Lcom/tnkfactory/ad/ha;)V

    iput-object v0, p0, Lcom/tnkfactory/ad/ha;->aF:Lcom/tnkfactory/ad/hc;

    return-void
.end method

.method public static a()Lcom/tnkfactory/ad/ha;
    .locals 2

    sget-object v0, Lcom/tnkfactory/ad/ha;->aG:Lcom/tnkfactory/ad/ha;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/tnkfactory/ad/TnkStyle;->availableLanguages:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/tnkfactory/ad/ha;->a(Ljava/lang/String;)Lcom/tnkfactory/ad/ha;

    move-result-object v0

    sput-object v0, Lcom/tnkfactory/ad/ha;->aG:Lcom/tnkfactory/ad/ha;

    :goto_0
    sget-object v0, Lcom/tnkfactory/ad/ha;->aG:Lcom/tnkfactory/ad/ha;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tnkfactory/ad/hd;

    invoke-direct {v0}, Lcom/tnkfactory/ad/hd;-><init>()V

    sput-object v0, Lcom/tnkfactory/ad/ha;->aG:Lcom/tnkfactory/ad/ha;

    :cond_0
    sget-object v0, Lcom/tnkfactory/ad/ha;->aG:Lcom/tnkfactory/ad/ha;

    return-object v0

    :cond_1
    sget-object v0, Lcom/tnkfactory/ad/TnkStyle;->defaultLanguage:Ljava/lang/String;

    invoke-static {v0}, Lcom/tnkfactory/ad/ha;->a(Ljava/lang/String;)Lcom/tnkfactory/ad/ha;

    move-result-object v0

    sput-object v0, Lcom/tnkfactory/ad/ha;->aG:Lcom/tnkfactory/ad/ha;

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Lcom/tnkfactory/ad/ha;
    .locals 1

    const-string v0, "ko"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/tnkfactory/ad/hj;

    invoke-direct {v0}, Lcom/tnkfactory/ad/hj;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "ja"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/tnkfactory/ad/hh;

    invoke-direct {v0}, Lcom/tnkfactory/ad/hh;-><init>()V

    goto :goto_0

    :cond_1
    const-string v0, "in"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/tnkfactory/ad/hf;

    invoke-direct {v0}, Lcom/tnkfactory/ad/hf;-><init>()V

    goto :goto_0

    :cond_2
    const-string v0, "en"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/tnkfactory/ad/hd;

    invoke-direct {v0}, Lcom/tnkfactory/ad/hd;-><init>()V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(J)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tnkfactory/ad/TnkStyle;->FormatCurrency:Lcom/tnkfactory/ad/hc;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tnkfactory/ad/TnkStyle;->FormatCurrency:Lcom/tnkfactory/ad/hc;

    invoke-interface {v0, p1, p2}, Lcom/tnkfactory/ad/hc;->a(J)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tnkfactory/ad/ha;->aF:Lcom/tnkfactory/ad/hc;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tnkfactory/ad/ha;->aF:Lcom/tnkfactory/ad/hc;

    invoke-interface {v0, p1, p2}, Lcom/tnkfactory/ad/hc;->a(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
