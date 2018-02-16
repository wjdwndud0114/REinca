.class public Lnet/supercat/TouchKeyboard;
.super Ljava/lang/Object;
.source "TouchKeyboard.java"

# interfaces
.implements Lnet/supercat/KBInputListener;


# static fields
.field private static final instance:Lnet/supercat/TouchKeyboard;

.field static final logTag:Ljava/lang/String; = "TouchKeyboard"


# instance fields
.field private finalText:Ljava/lang/String;

.field private inputDialog:Lnet/supercat/KBDialog;

.field private lastKnownInputText:Ljava/lang/String;

.field private wasActionButtonPressed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lnet/supercat/TouchKeyboard;

    invoke-direct {v0}, Lnet/supercat/TouchKeyboard;-><init>()V

    sput-object v0, Lnet/supercat/TouchKeyboard;->instance:Lnet/supercat/TouchKeyboard;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/supercat/TouchKeyboard;->inputDialog:Lnet/supercat/KBDialog;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lnet/supercat/TouchKeyboard;->lastKnownInputText:Ljava/lang/String;

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/supercat/TouchKeyboard;->wasActionButtonPressed:Z

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lnet/supercat/TouchKeyboard;->finalText:Ljava/lang/String;

    .line 26
    return-void
.end method

.method static synthetic access$000(Lnet/supercat/TouchKeyboard;)Z
    .locals 1
    .param p0, "x0"    # Lnet/supercat/TouchKeyboard;

    .prologue
    .line 15
    invoke-direct {p0}, Lnet/supercat/TouchKeyboard;->doIsVisible()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lnet/supercat/TouchKeyboard;)Lnet/supercat/KBDialog;
    .locals 1
    .param p0, "x0"    # Lnet/supercat/TouchKeyboard;

    .prologue
    .line 15
    iget-object v0, p0, Lnet/supercat/TouchKeyboard;->inputDialog:Lnet/supercat/KBDialog;

    return-object v0
.end method

.method static synthetic access$102(Lnet/supercat/TouchKeyboard;Lnet/supercat/KBDialog;)Lnet/supercat/KBDialog;
    .locals 0
    .param p0, "x0"    # Lnet/supercat/TouchKeyboard;
    .param p1, "x1"    # Lnet/supercat/KBDialog;

    .prologue
    .line 15
    iput-object p1, p0, Lnet/supercat/TouchKeyboard;->inputDialog:Lnet/supercat/KBDialog;

    return-object p1
.end method

.method static synthetic access$200(Lnet/supercat/TouchKeyboard;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lnet/supercat/TouchKeyboard;

    .prologue
    .line 15
    invoke-direct {p0}, Lnet/supercat/TouchKeyboard;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized clearFinalText()V
    .locals 3

    .prologue
    .line 62
    const-class v1, Lnet/supercat/TouchKeyboard;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lnet/supercat/TouchKeyboard;->instance:Lnet/supercat/TouchKeyboard;

    const/4 v2, 0x0

    iput-object v2, v0, Lnet/supercat/TouchKeyboard;->finalText:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    monitor-exit v1

    return-void

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized close()V
    .locals 2

    .prologue
    .line 34
    const-class v1, Lnet/supercat/TouchKeyboard;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lnet/supercat/TouchKeyboard;->instance:Lnet/supercat/TouchKeyboard;

    invoke-direct {v0}, Lnet/supercat/TouchKeyboard;->doClose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    monitor-exit v1

    return-void

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private doClose()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lnet/supercat/TouchKeyboard;->inputDialog:Lnet/supercat/KBDialog;

    if-nez v0, :cond_0

    .line 122
    :goto_0
    return-void

    .line 115
    :cond_0
    invoke-direct {p0}, Lnet/supercat/TouchKeyboard;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lnet/supercat/TouchKeyboard$2;

    invoke-direct {v1, p0}, Lnet/supercat/TouchKeyboard$2;-><init>(Lnet/supercat/TouchKeyboard;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private doIsVisible()Z
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lnet/supercat/TouchKeyboard;->inputDialog:Lnet/supercat/KBDialog;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private doOpen(Z)V
    .locals 2
    .param p1, "hideInput"    # Z

    .prologue
    .line 78
    invoke-direct {p0}, Lnet/supercat/TouchKeyboard;->doIsVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/supercat/TouchKeyboard;->inputDialog:Lnet/supercat/KBDialog;

    invoke-virtual {v0}, Lnet/supercat/KBDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lnet/supercat/TouchKeyboard;->inputDialog:Lnet/supercat/KBDialog;

    invoke-virtual {v0, p1}, Lnet/supercat/KBDialog;->setHideInput(Z)V

    .line 80
    const-string v0, "TouchKeyboard"

    const-string v1, "open() Already visible. Ignore."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :goto_0
    return-void

    .line 84
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/supercat/TouchKeyboard;->wasActionButtonPressed:Z

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lnet/supercat/TouchKeyboard;->lastKnownInputText:Ljava/lang/String;

    .line 87
    invoke-direct {p0}, Lnet/supercat/TouchKeyboard;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lnet/supercat/TouchKeyboard$1;

    invoke-direct {v1, p0, p1}, Lnet/supercat/TouchKeyboard$1;-><init>(Lnet/supercat/TouchKeyboard;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private doReset()V
    .locals 1

    .prologue
    .line 167
    const-string v0, ""

    invoke-direct {p0, v0}, Lnet/supercat/TouchKeyboard;->doSetText(Ljava/lang/String;)V

    .line 168
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/supercat/TouchKeyboard;->wasActionButtonPressed:Z

    .line 169
    const-string v0, ""

    iput-object v0, p0, Lnet/supercat/TouchKeyboard;->finalText:Ljava/lang/String;

    .line 170
    const-string v0, ""

    iput-object v0, p0, Lnet/supercat/TouchKeyboard;->lastKnownInputText:Ljava/lang/String;

    .line 171
    return-void
.end method

.method private doSetText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 141
    invoke-direct {p0}, Lnet/supercat/TouchKeyboard;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lnet/supercat/TouchKeyboard$3;

    invoke-direct {v1, p0, p1}, Lnet/supercat/TouchKeyboard$3;-><init>(Lnet/supercat/TouchKeyboard;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 148
    return-void
.end method

.method private getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public static declared-synchronized getFinalText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 58
    const-class v1, Lnet/supercat/TouchKeyboard;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lnet/supercat/TouchKeyboard;->instance:Lnet/supercat/TouchKeyboard;

    iget-object v0, v0, Lnet/supercat/TouchKeyboard;->finalText:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 50
    const-class v1, Lnet/supercat/TouchKeyboard;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lnet/supercat/TouchKeyboard;->instance:Lnet/supercat/TouchKeyboard;

    invoke-virtual {v0}, Lnet/supercat/TouchKeyboard;->doGetText()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized isCanceled()Z
    .locals 2

    .prologue
    .line 42
    const-class v1, Lnet/supercat/TouchKeyboard;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lnet/supercat/TouchKeyboard;->instance:Lnet/supercat/TouchKeyboard;

    invoke-virtual {v0}, Lnet/supercat/TouchKeyboard;->doIsCanceled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized isDone()Z
    .locals 2

    .prologue
    .line 38
    const-class v1, Lnet/supercat/TouchKeyboard;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lnet/supercat/TouchKeyboard;->instance:Lnet/supercat/TouchKeyboard;

    invoke-virtual {v0}, Lnet/supercat/TouchKeyboard;->doIsDone()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized isVisible()Z
    .locals 2

    .prologue
    .line 46
    const-class v1, Lnet/supercat/TouchKeyboard;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lnet/supercat/TouchKeyboard;->instance:Lnet/supercat/TouchKeyboard;

    invoke-direct {v0}, Lnet/supercat/TouchKeyboard;->doIsVisible()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized open(Z)V
    .locals 2
    .param p0, "hideInput"    # Z

    .prologue
    .line 30
    const-class v1, Lnet/supercat/TouchKeyboard;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lnet/supercat/TouchKeyboard;->instance:Lnet/supercat/TouchKeyboard;

    invoke-direct {v0, p0}, Lnet/supercat/TouchKeyboard;->doOpen(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    monitor-exit v1

    return-void

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized reset()V
    .locals 2

    .prologue
    .line 66
    const-class v1, Lnet/supercat/TouchKeyboard;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lnet/supercat/TouchKeyboard;->instance:Lnet/supercat/TouchKeyboard;

    invoke-direct {v0}, Lnet/supercat/TouchKeyboard;->doReset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    monitor-exit v1

    return-void

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setText(Ljava/lang/String;)V
    .locals 2
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 54
    const-class v1, Lnet/supercat/TouchKeyboard;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lnet/supercat/TouchKeyboard;->instance:Lnet/supercat/TouchKeyboard;

    if-eqz p0, :cond_0

    .end local p0    # "text":Ljava/lang/String;
    :goto_0
    invoke-direct {v0, p0}, Lnet/supercat/TouchKeyboard;->doSetText(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    monitor-exit v1

    return-void

    .line 54
    .restart local p0    # "text":Ljava/lang/String;
    :cond_0
    :try_start_1
    const-string p0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local p0    # "text":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 152
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 155
    return-void
.end method

.method public doGetText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lnet/supercat/TouchKeyboard;->lastKnownInputText:Ljava/lang/String;

    return-object v0
.end method

.method public doIsCanceled()Z
    .locals 1

    .prologue
    .line 133
    invoke-virtual {p0}, Lnet/supercat/TouchKeyboard;->doIsDone()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lnet/supercat/TouchKeyboard;->wasActionButtonPressed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public doIsDone()Z
    .locals 1

    .prologue
    .line 129
    invoke-direct {p0}, Lnet/supercat/TouchKeyboard;->doIsVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lnet/supercat/TouchKeyboard;->wasActionButtonPressed:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 158
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/supercat/TouchKeyboard;->lastKnownInputText:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public onTextCompleted(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "wasActionButtonPressed"    # Z

    .prologue
    .line 162
    iput-boolean p2, p0, Lnet/supercat/TouchKeyboard;->wasActionButtonPressed:Z

    .line 163
    iput-object p1, p0, Lnet/supercat/TouchKeyboard;->finalText:Ljava/lang/String;

    .line 164
    return-void
.end method
