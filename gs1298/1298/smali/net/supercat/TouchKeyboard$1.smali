.class Lnet/supercat/TouchKeyboard$1;
.super Ljava/lang/Object;
.source "TouchKeyboard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/supercat/TouchKeyboard;->doOpen(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/supercat/TouchKeyboard;

.field final synthetic val$hideInput:Z


# direct methods
.method constructor <init>(Lnet/supercat/TouchKeyboard;Z)V
    .locals 0
    .param p1, "this$0"    # Lnet/supercat/TouchKeyboard;

    .prologue
    .line 87
    iput-object p1, p0, Lnet/supercat/TouchKeyboard$1;->this$0:Lnet/supercat/TouchKeyboard;

    iput-boolean p2, p0, Lnet/supercat/TouchKeyboard$1;->val$hideInput:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 89
    iget-object v0, p0, Lnet/supercat/TouchKeyboard$1;->this$0:Lnet/supercat/TouchKeyboard;

    # invokes: Lnet/supercat/TouchKeyboard;->doIsVisible()Z
    invoke-static {v0}, Lnet/supercat/TouchKeyboard;->access$000(Lnet/supercat/TouchKeyboard;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lnet/supercat/TouchKeyboard$1;->this$0:Lnet/supercat/TouchKeyboard;

    # getter for: Lnet/supercat/TouchKeyboard;->inputDialog:Lnet/supercat/KBDialog;
    invoke-static {v0}, Lnet/supercat/TouchKeyboard;->access$100(Lnet/supercat/TouchKeyboard;)Lnet/supercat/KBDialog;

    move-result-object v0

    invoke-virtual {v0}, Lnet/supercat/KBDialog;->dismiss()V

    .line 93
    :cond_0
    iget-object v0, p0, Lnet/supercat/TouchKeyboard$1;->this$0:Lnet/supercat/TouchKeyboard;

    new-instance v1, Lnet/supercat/KBDialog;

    iget-object v2, p0, Lnet/supercat/TouchKeyboard$1;->this$0:Lnet/supercat/TouchKeyboard;

    # invokes: Lnet/supercat/TouchKeyboard;->getActivity()Landroid/app/Activity;
    invoke-static {v2}, Lnet/supercat/TouchKeyboard;->access$200(Lnet/supercat/TouchKeyboard;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lnet/supercat/TouchKeyboard$1;->this$0:Lnet/supercat/TouchKeyboard;

    invoke-direct {v1, v2, v3}, Lnet/supercat/KBDialog;-><init>(Landroid/content/Context;Lnet/supercat/KBInputListener;)V

    # setter for: Lnet/supercat/TouchKeyboard;->inputDialog:Lnet/supercat/KBDialog;
    invoke-static {v0, v1}, Lnet/supercat/TouchKeyboard;->access$102(Lnet/supercat/TouchKeyboard;Lnet/supercat/KBDialog;)Lnet/supercat/KBDialog;

    .line 94
    iget-object v0, p0, Lnet/supercat/TouchKeyboard$1;->this$0:Lnet/supercat/TouchKeyboard;

    # getter for: Lnet/supercat/TouchKeyboard;->inputDialog:Lnet/supercat/KBDialog;
    invoke-static {v0}, Lnet/supercat/TouchKeyboard;->access$100(Lnet/supercat/TouchKeyboard;)Lnet/supercat/KBDialog;

    move-result-object v0

    new-instance v1, Lnet/supercat/TouchKeyboard$1$1;

    invoke-direct {v1, p0}, Lnet/supercat/TouchKeyboard$1$1;-><init>(Lnet/supercat/TouchKeyboard$1;)V

    invoke-virtual {v0, v1}, Lnet/supercat/KBDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 100
    iget-object v0, p0, Lnet/supercat/TouchKeyboard$1;->this$0:Lnet/supercat/TouchKeyboard;

    # getter for: Lnet/supercat/TouchKeyboard;->inputDialog:Lnet/supercat/KBDialog;
    invoke-static {v0}, Lnet/supercat/TouchKeyboard;->access$100(Lnet/supercat/TouchKeyboard;)Lnet/supercat/KBDialog;

    move-result-object v0

    invoke-virtual {v0}, Lnet/supercat/KBDialog;->show()V

    .line 103
    iget-object v0, p0, Lnet/supercat/TouchKeyboard$1;->this$0:Lnet/supercat/TouchKeyboard;

    # getter for: Lnet/supercat/TouchKeyboard;->inputDialog:Lnet/supercat/KBDialog;
    invoke-static {v0}, Lnet/supercat/TouchKeyboard;->access$100(Lnet/supercat/TouchKeyboard;)Lnet/supercat/KBDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lnet/supercat/TouchKeyboard$1;->this$0:Lnet/supercat/TouchKeyboard;

    # getter for: Lnet/supercat/TouchKeyboard;->inputDialog:Lnet/supercat/KBDialog;
    invoke-static {v0}, Lnet/supercat/TouchKeyboard;->access$100(Lnet/supercat/TouchKeyboard;)Lnet/supercat/KBDialog;

    move-result-object v0

    iget-boolean v1, p0, Lnet/supercat/TouchKeyboard$1;->val$hideInput:Z

    invoke-virtual {v0, v1}, Lnet/supercat/KBDialog;->setHideInput(Z)V

    .line 105
    :cond_1
    return-void
.end method
