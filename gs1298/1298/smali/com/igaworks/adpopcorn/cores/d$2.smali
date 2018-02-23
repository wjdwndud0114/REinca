.class Lcom/igaworks/adpopcorn/cores/d$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/igaworks/core/AdvertisingIdClient$ADIDCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/adpopcorn/cores/d;->d(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/igaworks/adpopcorn/cores/d;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/igaworks/adpopcorn/cores/d;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/igaworks/adpopcorn/cores/d$2;->a:Lcom/igaworks/adpopcorn/cores/d;

    iput-object p2, p0, Lcom/igaworks/adpopcorn/cores/d$2;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/igaworks/adpopcorn/cores/d$2;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/igaworks/core/AdvertisingIdClient$AdInfo;)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/d$2;->a:Lcom/igaworks/adpopcorn/cores/d;

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/d$2;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/igaworks/adpopcorn/cores/d$2;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/igaworks/core/AdvertisingIdClient$AdInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/igaworks/adpopcorn/cores/d;->a(Lcom/igaworks/adpopcorn/cores/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
