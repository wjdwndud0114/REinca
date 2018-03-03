.class final Lcom/igaworks/adbrix/cpe/CPEProgressBarHandler$1;
.super Landroid/os/CountDownTimer;
.source "CPEProgressBarHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/adbrix/cpe/CPEProgressBarHandler;->makeToastPopup(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(JJ)V
    .locals 1
    .param p1, "x0"    # J
    .param p3, "x1"    # J

    .prologue
    .line 178
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .prologue
    .line 181
    # getter for: Lcom/igaworks/adbrix/cpe/CPEProgressBarHandler;->popupToast:Landroid/widget/Toast;
    invoke-static {}, Lcom/igaworks/adbrix/cpe/CPEProgressBarHandler;->access$000()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onTick(J)V
    .locals 1
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 180
    # getter for: Lcom/igaworks/adbrix/cpe/CPEProgressBarHandler;->popupToast:Landroid/widget/Toast;
    invoke-static {}, Lcom/igaworks/adbrix/cpe/CPEProgressBarHandler;->access$000()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
