.class Lcom/igaworks/adpopcorn/cores/c$a;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/igaworks/adpopcorn/cores/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/igaworks/adpopcorn/cores/c;

.field private b:Landroid/content/Context;

.field private final c:Ljava/lang/String;

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/igaworks/adpopcorn/cores/c;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/igaworks/adpopcorn/cores/c$a;->a:Lcom/igaworks/adpopcorn/cores/c;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-string v0, "ADIDThread"

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c$a;->c:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igaworks/adpopcorn/cores/c$a;->d:Z

    iput-object p2, p0, Lcom/igaworks/adpopcorn/cores/c$a;->b:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/igaworks/adpopcorn/cores/c$a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/c$a;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/igaworks/adpopcorn/cores/c$a;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/igaworks/adpopcorn/cores/c$a;->d:Z

    return-void
.end method

.method static synthetic b(Lcom/igaworks/adpopcorn/cores/c$a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/igaworks/adpopcorn/cores/c$a;->d:Z

    return v0
.end method

.method static synthetic c(Lcom/igaworks/adpopcorn/cores/c$a;)Lcom/igaworks/adpopcorn/cores/c;
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/c$a;->a:Lcom/igaworks/adpopcorn/cores/c;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v1, 0x1

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    :try_start_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/c$a;->a:Lcom/igaworks/adpopcorn/cores/c;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/cores/c;->a(Lcom/igaworks/adpopcorn/cores/c;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/c$a;->a:Lcom/igaworks/adpopcorn/cores/c;

    invoke-static {v0}, Lcom/igaworks/adpopcorn/cores/c;->a(Lcom/igaworks/adpopcorn/cores/c;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/c$a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/igaworks/core/DeviceIDManger;->getInstance(Landroid/content/Context;)Lcom/igaworks/core/DeviceIDManger;

    move-result-object v0

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/c$a;->b:Landroid/content/Context;

    new-instance v2, Lcom/igaworks/adpopcorn/cores/c$a$1;

    invoke-direct {v2, p0}, Lcom/igaworks/adpopcorn/cores/c$a$1;-><init>(Lcom/igaworks/adpopcorn/cores/c$a;)V

    invoke-virtual {v0, v1, v2}, Lcom/igaworks/core/DeviceIDManger;->getAndroidADID(Landroid/content/Context;Lcom/igaworks/core/AdvertisingIdClient$ADIDCallbackListener;)Lcom/igaworks/core/AdvertisingIdClient$AdInfo;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/igaworks/adpopcorn/cores/c$a$2;

    invoke-direct {v1, p0}, Lcom/igaworks/adpopcorn/cores/c$a$2;-><init>(Lcom/igaworks/adpopcorn/cores/c$a;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/c$a;->a:Lcom/igaworks/adpopcorn/cores/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/cores/c;->c(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
