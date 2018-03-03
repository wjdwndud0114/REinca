.class Lnet/supercat/TouchKeyboard$1$1;
.super Ljava/lang/Object;
.source "TouchKeyboard.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/supercat/TouchKeyboard$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/supercat/TouchKeyboard$1;


# direct methods
.method constructor <init>(Lnet/supercat/TouchKeyboard$1;)V
    .locals 0
    .param p1, "this$1"    # Lnet/supercat/TouchKeyboard$1;

    .prologue
    .line 94
    iput-object p1, p0, Lnet/supercat/TouchKeyboard$1$1;->this$1:Lnet/supercat/TouchKeyboard$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .prologue
    .line 97
    iget-object v0, p0, Lnet/supercat/TouchKeyboard$1$1;->this$1:Lnet/supercat/TouchKeyboard$1;

    iget-object v0, v0, Lnet/supercat/TouchKeyboard$1;->this$0:Lnet/supercat/TouchKeyboard;

    const/4 v1, 0x0

    # setter for: Lnet/supercat/TouchKeyboard;->inputDialog:Lnet/supercat/KBDialog;
    invoke-static {v0, v1}, Lnet/supercat/TouchKeyboard;->access$102(Lnet/supercat/TouchKeyboard;Lnet/supercat/KBDialog;)Lnet/supercat/KBDialog;

    .line 98
    return-void
.end method
