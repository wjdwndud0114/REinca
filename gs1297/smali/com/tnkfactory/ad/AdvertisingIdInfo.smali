.class public Lcom/tnkfactory/ad/AdvertisingIdInfo;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tnkfactory/ad/AdvertisingIdInfo;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tnkfactory/ad/AdvertisingIdInfo;->b:Z

    iput-object p1, p0, Lcom/tnkfactory/ad/AdvertisingIdInfo;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/tnkfactory/ad/AdvertisingIdInfo;->b:Z

    return-void
.end method

.method public static requestIdInfo(Landroid/content/Context;)Lcom/tnkfactory/ad/AdvertisingIdInfo;
    .locals 1

    invoke-static {p0}, Lcom/tnkfactory/ad/ed;->a(Landroid/content/Context;)Lcom/tnkfactory/ad/AdvertisingIdInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/AdvertisingIdInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public isLimited()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tnkfactory/ad/AdvertisingIdInfo;->b:Z

    return v0
.end method
