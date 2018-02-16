.class public Lcom/inca/security/Core/WeakRefHandler;
.super Landroid/os/Handler;
.source "z"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inca/security/w;
    }
.end annotation


# instance fields
.field private synthetic IiIiIiiIii:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/inca/security/w;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Looper;
    .param p2, "arg1"    # Lcom/inca/security/w;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 46
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inca/security/Core/WeakRefHandler;->IiIiIiiIii:Ljava/lang/ref/WeakReference;

    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/inca/security/w;)V
    .locals 1
    .param p1, "arg0"    # Lcom/inca/security/w;

    .prologue
    .line 87
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 165
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inca/security/Core/WeakRefHandler;->IiIiIiiIii:Ljava/lang/ref/WeakReference;

    .line 124
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Message;

    .prologue
    .line 161
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 117
    iget-object v0, p0, Lcom/inca/security/Core/WeakRefHandler;->IiIiIiiIii:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inca/security/w;

    .line 22
    if-nez v0, :cond_0

    .line 180
    :goto_0
    return-void

    .line 120
    :cond_0
    invoke-interface {v0, p1}, Lcom/inca/security/w;->IiiiIIIIii(Landroid/os/Message;)V

    goto :goto_0
.end method
