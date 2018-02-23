.class public Lcom/inca/security/Tracker/TrackerWrapperActivity;
.super Landroid/app/Activity;
.source "mb" #mb


# instance fields
.field private synthetic IiIiIiiIii:Lcom/inca/security/Tracker/Tracker;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 31
    iput-object v0, p0, Lcom/inca/security/Tracker/TrackerWrapperActivity;->IiIiIiiIii:Lcom/inca/security/Tracker/Tracker;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/inca/security/Tracker/TrackerWrapperActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inca/security/Tracker/Tracker;->getInstance(Landroid/content/Context;)Lcom/inca/security/Tracker/Tracker;

    move-result-object v0

    iput-object v0, p0, Lcom/inca/security/Tracker/TrackerWrapperActivity;->IiIiIiiIii:Lcom/inca/security/Tracker/Tracker;

    .line 94
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/inca/security/Tracker/TrackerWrapperActivity;->IiIiIiiIii:Lcom/inca/security/Tracker/Tracker;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/inca/security/Tracker/TrackerWrapperActivity;->IiIiIiiIii:Lcom/inca/security/Tracker/Tracker;

    invoke-virtual {v0, p0}, Lcom/inca/security/Tracker/Tracker;->pause(Landroid/content/Context;)V

    .line 46
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 44
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 67
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 161
    iget-object v0, p0, Lcom/inca/security/Tracker/TrackerWrapperActivity;->IiIiIiiIii:Lcom/inca/security/Tracker/Tracker;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/inca/security/Tracker/TrackerWrapperActivity;->IiIiIiiIii:Lcom/inca/security/Tracker/Tracker;

    invoke-virtual {v0, p0}, Lcom/inca/security/Tracker/Tracker;->resume(Landroid/content/Context;)V

    .line 22
    :cond_0
    return-void
.end method
