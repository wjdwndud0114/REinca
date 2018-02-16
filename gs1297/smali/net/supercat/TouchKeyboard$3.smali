.class Lnet/supercat/TouchKeyboard$3;
.super Ljava/lang/Object;
.source "TouchKeyboard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/supercat/TouchKeyboard;->doSetText(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/supercat/TouchKeyboard;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/supercat/TouchKeyboard;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lnet/supercat/TouchKeyboard;

    .prologue
    .line 141
    iput-object p1, p0, Lnet/supercat/TouchKeyboard$3;->this$0:Lnet/supercat/TouchKeyboard;

    iput-object p2, p0, Lnet/supercat/TouchKeyboard$3;->val$text:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lnet/supercat/TouchKeyboard$3;->this$0:Lnet/supercat/TouchKeyboard;

    # getter for: Lnet/supercat/TouchKeyboard;->inputDialog:Lnet/supercat/KBDialog;
    invoke-static {v0}, Lnet/supercat/TouchKeyboard;->access$100(Lnet/supercat/TouchKeyboard;)Lnet/supercat/KBDialog;

    move-result-object v0

    if-nez v0, :cond_0

    .line 146
    :goto_0
    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lnet/supercat/TouchKeyboard$3;->this$0:Lnet/supercat/TouchKeyboard;

    # getter for: Lnet/supercat/TouchKeyboard;->inputDialog:Lnet/supercat/KBDialog;
    invoke-static {v0}, Lnet/supercat/TouchKeyboard;->access$100(Lnet/supercat/TouchKeyboard;)Lnet/supercat/KBDialog;

    move-result-object v0

    iget-object v1, p0, Lnet/supercat/TouchKeyboard$3;->val$text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnet/supercat/KBDialog;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method
