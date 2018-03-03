.class Lcom/igaworks/impl/CommonFrameworkImpl$6;
.super Ljava/lang/Object;
.source "CommonFrameworkImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/impl/CommonFrameworkImpl;->setUserId(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/impl/CommonFrameworkImpl;

.field final synthetic val$_usn:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/igaworks/impl/CommonFrameworkImpl;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/impl/CommonFrameworkImpl;

    .prologue
    .line 1085
    iput-object p1, p0, Lcom/igaworks/impl/CommonFrameworkImpl$6;->this$0:Lcom/igaworks/impl/CommonFrameworkImpl;

    iput-object p2, p0, Lcom/igaworks/impl/CommonFrameworkImpl$6;->val$_usn:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1089
    iget-object v0, p0, Lcom/igaworks/impl/CommonFrameworkImpl$6;->this$0:Lcom/igaworks/impl/CommonFrameworkImpl;

    const-string v1, "userId"

    iget-object v2, p0, Lcom/igaworks/impl/CommonFrameworkImpl$6;->val$_usn:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/igaworks/impl/CommonFrameworkImpl;->save_demographic(Ljava/lang/String;Ljava/lang/String;)V

    .line 1090
    iget-object v0, p0, Lcom/igaworks/impl/CommonFrameworkImpl$6;->val$_usn:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/impl/CommonFrameworkImpl$6;->this$0:Lcom/igaworks/impl/CommonFrameworkImpl;

    iget-object v1, p0, Lcom/igaworks/impl/CommonFrameworkImpl$6;->val$_usn:Ljava/lang/String;

    # invokes: Lcom/igaworks/impl/CommonFrameworkImpl;->setUsnAdpopcorn(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/igaworks/impl/CommonFrameworkImpl;->access$200(Lcom/igaworks/impl/CommonFrameworkImpl;Ljava/lang/String;)V

    .line 1091
    :cond_0
    iget-object v0, p0, Lcom/igaworks/impl/CommonFrameworkImpl$6;->this$0:Lcom/igaworks/impl/CommonFrameworkImpl;

    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/igaworks/impl/CommonFrameworkImpl$6;->val$_usn:Ljava/lang/String;

    # invokes: Lcom/igaworks/impl/CommonFrameworkImpl;->setUsnLiveOps(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/igaworks/impl/CommonFrameworkImpl;->access$300(Lcom/igaworks/impl/CommonFrameworkImpl;Landroid/content/Context;Ljava/lang/String;)V

    .line 1092
    return-void
.end method
