.class public Lcom/inca/security/ya;
.super Ljava/lang/Thread;
.source "za"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inca/security/ea;->IIiIIiIiIi()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic IiIiIiiIii:Lcom/inca/security/ea;


# direct methods
.method public constructor <init>(Lcom/inca/security/ea;)V
    .locals 0
    .param p1, "arg0"    # Lcom/inca/security/ea;

    .prologue
    .line 471
    iput-object p1, p0, Lcom/inca/security/ya;->IiIiIiiIii:Lcom/inca/security/ea;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 257
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 489
    iget-object v0, p0, Lcom/inca/security/ya;->IiIiIiiIii:Lcom/inca/security/ea;

    invoke-static {v0}, Lcom/inca/security/ea;->IiiiIIIIii(Lcom/inca/security/ea;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "k=Z\n_,X)\u0010m\u0016+E#^mI\"F\"Xp\u0008nL+I.\u001a}\u0008sx(N$X(I9C\"Dmg\"N(\n\u000cI9C;K9O)\u000bq\u0005+E#^s" #AppGuard: <font color="#ffcc00">Redirection Mode Activated!</font>

    invoke-static {v1}, Lcom/inca/security/wb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 297
    iget-object v0, p0, Lcom/inca/security/ya;->IiIiIiiIii:Lcom/inca/security/ea;

    invoke-static {v0}, Lcom/inca/security/ea;->IiiiIIIIii(Lcom/inca/security/ea;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const-string v3, "qL\"D9\n.E!E?\u0017o\t+L.I}\u001ao\u0014\u0001C.O#Y(a(SmC>\no" #<font color="#ffcc00">LicenseKey is "

    invoke-static {v3}, Lcom/inca/security/wb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/inca/security/ya;->IiIiIiiIii:Lcom/inca/security/ea;

    invoke-virtual {v2}, Lcom/inca/security/ea;->IiiiIIIIii()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u0008q\u0005+E#^s" #"</font>

    invoke-static {v2}, Lcom/inca/security/wb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 304
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 320
    return-void
.end method
