.class Lcom/igaworks/impl/IGAFirstRunLogic$2;
.super Ljava/lang/Object;
.source "IGAFirstRunLogic.java"

# interfaces
.implements Lcom/android/installreferrer/api/InstallReferrerStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/igaworks/impl/IGAFirstRunLogic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/impl/IGAFirstRunLogic;


# direct methods
.method constructor <init>(Lcom/igaworks/impl/IGAFirstRunLogic;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/impl/IGAFirstRunLogic;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/igaworks/impl/IGAFirstRunLogic$2;->this$0:Lcom/igaworks/impl/IGAFirstRunLogic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInstallReferrerServiceDisconnected()V
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/igaworks/impl/IGAFirstRunLogic$2;->this$0:Lcom/igaworks/impl/IGAFirstRunLogic;

    const/4 v1, -0x1

    # invokes: Lcom/igaworks/impl/IGAFirstRunLogic;->onInstallReferrerResponseError(I)V
    invoke-static {v0, v1}, Lcom/igaworks/impl/IGAFirstRunLogic;->access$300(Lcom/igaworks/impl/IGAFirstRunLogic;I)V

    .line 175
    return-void
.end method

.method public onInstallReferrerSetupFinished(I)V
    .locals 3
    .param p1, "responseCode"    # I

    .prologue
    .line 156
    const-string v0, "IGAW_QA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FirstRun::onInstallReferrerSetupFinished() CODE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    if-nez p1, :cond_0

    .line 159
    iget-object v0, p0, Lcom/igaworks/impl/IGAFirstRunLogic$2;->this$0:Lcom/igaworks/impl/IGAFirstRunLogic;

    iget-object v1, p0, Lcom/igaworks/impl/IGAFirstRunLogic$2;->this$0:Lcom/igaworks/impl/IGAFirstRunLogic;

    # getter for: Lcom/igaworks/impl/IGAFirstRunLogic;->mInstallReferrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;
    invoke-static {v1}, Lcom/igaworks/impl/IGAFirstRunLogic;->access$100(Lcom/igaworks/impl/IGAFirstRunLogic;)Lcom/android/installreferrer/api/InstallReferrerClient;

    move-result-object v1

    # invokes: Lcom/igaworks/impl/IGAFirstRunLogic;->onInstallReferrerResponseOK(Lcom/android/installreferrer/api/InstallReferrerClient;)V
    invoke-static {v0, v1}, Lcom/igaworks/impl/IGAFirstRunLogic;->access$200(Lcom/igaworks/impl/IGAFirstRunLogic;Lcom/android/installreferrer/api/InstallReferrerClient;)V

    .line 160
    iget-object v0, p0, Lcom/igaworks/impl/IGAFirstRunLogic$2;->this$0:Lcom/igaworks/impl/IGAFirstRunLogic;

    # getter for: Lcom/igaworks/impl/IGAFirstRunLogic;->mInstallReferrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;
    invoke-static {v0}, Lcom/igaworks/impl/IGAFirstRunLogic;->access$100(Lcom/igaworks/impl/IGAFirstRunLogic;)Lcom/android/installreferrer/api/InstallReferrerClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/installreferrer/api/InstallReferrerClient;->endConnection()V

    .line 166
    :goto_0
    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/igaworks/impl/IGAFirstRunLogic$2;->this$0:Lcom/igaworks/impl/IGAFirstRunLogic;

    # invokes: Lcom/igaworks/impl/IGAFirstRunLogic;->onInstallReferrerResponseError(I)V
    invoke-static {v0, p1}, Lcom/igaworks/impl/IGAFirstRunLogic;->access$300(Lcom/igaworks/impl/IGAFirstRunLogic;I)V

    goto :goto_0
.end method
