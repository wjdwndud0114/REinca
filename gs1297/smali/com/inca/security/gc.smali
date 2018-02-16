.class public Lcom/inca/security/gc;
.super Landroid/content/BroadcastReceiver;
.source "mc"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inca/security/Core/AppGuardEngine;->IiiiIIIIii([BZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic IiIiIiiIii:Lcom/inca/security/Core/AppGuardEngine;


# direct methods
.method public constructor <init>(Lcom/inca/security/Core/AppGuardEngine;)V
    .locals 0
    .param p1, "arg0"    # Lcom/inca/security/Core/AppGuardEngine;

    .prologue
    .line 1710
    iput-object p1, p0, Lcom/inca/security/gc;->IiIiIiiIii:Lcom/inca/security/Core/AppGuardEngine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 1743
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1884
    const-string v1, "B>G\"L9G~J>W5M$\r1@$J?M~a\u0011w\u0004f\u0002z\u000f`\u0018b\u001ed\u0015g"

    invoke-static {v1}, Lcom/inca/security/fa;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1657
    const-string v0, "5,/7\"$&"

    invoke-static {v0}, Lcom/inca/security/x;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "W5N F\"B$V\"F"

    invoke-static {v0}, Lcom/inca/security/fa;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 1630
    const/16 v0, 0x8

    :try_start_0
    new-array v0, v0, [B

    .line 1753
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1920
    const-string v2, "W5N F\"B$V\"F"

    const-string v3, "5,/7\"$&"

    invoke-static {v3}, Lcom/inca/security/x;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3, v0}, Lcom/inca/security/va;->IiiiIIIIii(I[B)V

    .line 1744
    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-virtual {v1, v0, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1774
    invoke-static {v2}, Lcom/inca/security/fa;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2, v0}, Lcom/inca/security/va;->IiiiIIIIii(I[B)V

    .line 1615
    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-virtual {v1, v0, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1689
    iget-object v0, p0, Lcom/inca/security/gc;->IiIiIiiIii:Lcom/inca/security/Core/AppGuardEngine;

    const/16 v2, 0x3e8

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/inca/security/Core/AppGuardEngine;->IiiiIIIIii(Lcom/inca/security/Core/AppGuardEngine;I[B)I

    .line 1925
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1852
    :cond_0
    :goto_0
    return-void

    .line 1897
    :catch_0
    move-exception v0

    goto :goto_0
.end method
