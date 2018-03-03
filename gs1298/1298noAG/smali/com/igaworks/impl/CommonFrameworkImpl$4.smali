.class Lcom/igaworks/impl/CommonFrameworkImpl$4;
.super Ljava/lang/Object;
.source "CommonFrameworkImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/impl/CommonFrameworkImpl;->setAge(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/impl/CommonFrameworkImpl;

.field final synthetic val$age:I


# direct methods
.method constructor <init>(Lcom/igaworks/impl/CommonFrameworkImpl;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/impl/CommonFrameworkImpl;

    .prologue
    .line 1038
    iput-object p1, p0, Lcom/igaworks/impl/CommonFrameworkImpl$4;->this$0:Lcom/igaworks/impl/CommonFrameworkImpl;

    iput p2, p0, Lcom/igaworks/impl/CommonFrameworkImpl$4;->val$age:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1044
    :try_start_0
    iget-object v1, p0, Lcom/igaworks/impl/CommonFrameworkImpl$4;->this$0:Lcom/igaworks/impl/CommonFrameworkImpl;

    const-string v2, "age"

    iget v3, p0, Lcom/igaworks/impl/CommonFrameworkImpl$4;->val$age:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/igaworks/impl/CommonFrameworkImpl;->save_demographic(Ljava/lang/String;Ljava/lang/String;)V

    .line 1045
    iget-object v1, p0, Lcom/igaworks/impl/CommonFrameworkImpl$4;->this$0:Lcom/igaworks/impl/CommonFrameworkImpl;

    iget v2, p0, Lcom/igaworks/impl/CommonFrameworkImpl$4;->val$age:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/igaworks/impl/CommonFrameworkImpl;->setAgeAdpopcorn(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/igaworks/impl/CommonFrameworkImpl;->access$000(Lcom/igaworks/impl/CommonFrameworkImpl;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1049
    :goto_0
    return-void

    .line 1046
    :catch_0
    move-exception v0

    .line 1047
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
