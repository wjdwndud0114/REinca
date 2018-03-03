.class Lnet/supercat/TouchKeyboard$2;
.super Ljava/lang/Object;
.source "TouchKeyboard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/supercat/TouchKeyboard;->doClose()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/supercat/TouchKeyboard;


# direct methods
.method constructor <init>(Lnet/supercat/TouchKeyboard;)V
    .locals 0
    .param p1, "this$0"    # Lnet/supercat/TouchKeyboard;

    .prologue
    .line 115
    iput-object p1, p0, Lnet/supercat/TouchKeyboard$2;->this$0:Lnet/supercat/TouchKeyboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lnet/supercat/TouchKeyboard$2;->this$0:Lnet/supercat/TouchKeyboard;

    # getter for: Lnet/supercat/TouchKeyboard;->inputDialog:Lnet/supercat/KBDialog;
    invoke-static {v0}, Lnet/supercat/TouchKeyboard;->access$100(Lnet/supercat/TouchKeyboard;)Lnet/supercat/KBDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lnet/supercat/TouchKeyboard$2;->this$0:Lnet/supercat/TouchKeyboard;

    # getter for: Lnet/supercat/TouchKeyboard;->inputDialog:Lnet/supercat/KBDialog;
    invoke-static {v0}, Lnet/supercat/TouchKeyboard;->access$100(Lnet/supercat/TouchKeyboard;)Lnet/supercat/KBDialog;

    move-result-object v0

    invoke-virtual {v0}, Lnet/supercat/KBDialog;->dismiss()V

    .line 119
    :cond_0
    iget-object v0, p0, Lnet/supercat/TouchKeyboard$2;->this$0:Lnet/supercat/TouchKeyboard;

    const/4 v1, 0x0

    # setter for: Lnet/supercat/TouchKeyboard;->inputDialog:Lnet/supercat/KBDialog;
    invoke-static {v0, v1}, Lnet/supercat/TouchKeyboard;->access$102(Lnet/supercat/TouchKeyboard;Lnet/supercat/KBDialog;)Lnet/supercat/KBDialog;

    .line 120
    return-void
.end method
