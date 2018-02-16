.class Lcom/igaworks/adpopcorn/cores/c/a$a;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/igaworks/adpopcorn/cores/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/igaworks/adpopcorn/cores/c/a;

.field private b:Landroid/content/Context;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Z


# direct methods
.method public constructor <init>(Lcom/igaworks/adpopcorn/cores/c/a;Landroid/content/Context;ILjava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/igaworks/adpopcorn/cores/c/a$a;->a:Lcom/igaworks/adpopcorn/cores/c/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/adpopcorn/cores/c/a$a;->d:Ljava/lang/String;

    iput-object p2, p0, Lcom/igaworks/adpopcorn/cores/c/a$a;->b:Landroid/content/Context;

    iput p3, p0, Lcom/igaworks/adpopcorn/cores/c/a$a;->c:I

    iput-object p4, p0, Lcom/igaworks/adpopcorn/cores/c/a$a;->d:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/igaworks/adpopcorn/cores/c/a$a;->e:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/c/a$a;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/c/a$a;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/c/a$a;->d:Ljava/lang/String;

    const-string v1, "default_schema"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/igaworks/adpopcorn/cores/c/a$a;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/c/a$a;->d:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igaworks/adpopcorn/cores/c/a$a;->e:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    new-instance v0, Lcom/igaworks/adpopcorn/cores/model/c;

    invoke-direct {v0}, Lcom/igaworks/adpopcorn/cores/model/c;-><init>()V

    iget-boolean v1, p0, Lcom/igaworks/adpopcorn/cores/c/a$a;->e:Z

    invoke-virtual {v0, v1}, Lcom/igaworks/adpopcorn/cores/model/c;->b(Z)V

    iget-object v1, p0, Lcom/igaworks/adpopcorn/cores/c/a$a;->a:Lcom/igaworks/adpopcorn/cores/c/a;

    iget v2, p0, Lcom/igaworks/adpopcorn/cores/c/a$a;->c:I

    invoke-static {v1, v2, v0}, Lcom/igaworks/adpopcorn/cores/c/a;->a(Lcom/igaworks/adpopcorn/cores/c/a;ILcom/igaworks/adpopcorn/cores/model/c;)V

    return-void

    :catch_0
    move-exception v0

    iput-boolean v3, p0, Lcom/igaworks/adpopcorn/cores/c/a$a;->e:Z

    goto :goto_0
.end method
