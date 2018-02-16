.class Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$2;
.super Ljava/lang/Object;
.source "ADBrixFrameworkImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->setCustomCohort(Lcom/igaworks/adbrix/interfaces/ADBrixInterface$CohortVariable;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;

.field final synthetic val$cohort:Ljava/lang/String;

.field final synthetic val$cohortVariable:Lcom/igaworks/adbrix/interfaces/ADBrixInterface$CohortVariable;


# direct methods
.method constructor <init>(Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;Lcom/igaworks/adbrix/interfaces/ADBrixInterface$CohortVariable;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$2;->this$0:Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;

    iput-object p2, p0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$2;->val$cohortVariable:Lcom/igaworks/adbrix/interfaces/ADBrixInterface$CohortVariable;

    iput-object p3, p0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$2;->val$cohort:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 171
    :try_start_0
    # getter for: Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->appContext:Landroid/content/Context;
    invoke-static {}, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->access$100()Landroid/content/Context;

    move-result-object v1

    const-string v2, "IGAW_QA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setCustomCohort : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$2;->val$cohortVariable:Lcom/igaworks/adbrix/interfaces/ADBrixInterface$CohortVariable;

    invoke-virtual {v4}, Lcom/igaworks/adbrix/interfaces/ADBrixInterface$CohortVariable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$2;->val$cohort:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 172
    # getter for: Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->appContext:Landroid/content/Context;
    invoke-static {}, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->access$200()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$2;->val$cohortVariable:Lcom/igaworks/adbrix/interfaces/ADBrixInterface$CohortVariable;

    invoke-virtual {v2}, Lcom/igaworks/adbrix/interfaces/ADBrixInterface$CohortVariable;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$2;->val$cohort:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/igaworks/dao/CohortDAO;->updateCohort(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :goto_0
    return-void

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
