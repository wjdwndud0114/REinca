.class Lcom/igaworks/adpopcorn/cores/d$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/igaworks/core/AdvertisingIdClient$ADIDCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/adpopcorn/cores/d;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/igaworks/adpopcorn/cores/d;


# direct methods
.method constructor <init>(Lcom/igaworks/adpopcorn/cores/d;)V
    .locals 0

    iput-object p1, p0, Lcom/igaworks/adpopcorn/cores/d$3;->a:Lcom/igaworks/adpopcorn/cores/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/igaworks/core/AdvertisingIdClient$AdInfo;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d$3;->a:Lcom/igaworks/adpopcorn/cores/d;

    invoke-virtual {p1}, Lcom/igaworks/core/AdvertisingIdClient$AdInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/igaworks/adpopcorn/cores/d;->a(Lcom/igaworks/adpopcorn/cores/d;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
