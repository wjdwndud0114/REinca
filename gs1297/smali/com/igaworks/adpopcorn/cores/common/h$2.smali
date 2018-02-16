.class Lcom/igaworks/adpopcorn/cores/common/h$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/igaworks/core/AdvertisingIdClient$ADIDCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/adpopcorn/cores/common/h;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/igaworks/adpopcorn/cores/common/h$2;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/igaworks/core/AdvertisingIdClient$AdInfo;)V
    .locals 2

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/common/h$2;->a:Landroid/content/Context;

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    invoke-static {v1, v0}, Lcom/igaworks/adpopcorn/cores/common/h;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/igaworks/core/AdvertisingIdClient$AdInfo;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
