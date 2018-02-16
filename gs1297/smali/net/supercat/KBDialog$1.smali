.class Lnet/supercat/KBDialog$1;
.super Ljava/lang/Object;
.source "KBDialog.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/supercat/KBDialog;-><init>(Landroid/content/Context;Lnet/supercat/KBInputListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/supercat/KBDialog;


# direct methods
.method constructor <init>(Lnet/supercat/KBDialog;)V
    .locals 0
    .param p1, "this$0"    # Lnet/supercat/KBDialog;

    .prologue
    .line 117
    iput-object p1, p0, Lnet/supercat/KBDialog$1;->this$0:Lnet/supercat/KBDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "paramAnonymousView"    # Landroid/view/View;
    .param p2, "paramAnonymousBoolean"    # Z

    .prologue
    .line 120
    if-eqz p2, :cond_0

    .line 121
    iget-object v0, p0, Lnet/supercat/KBDialog$1;->this$0:Lnet/supercat/KBDialog;

    invoke-virtual {v0}, Lnet/supercat/KBDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 122
    :cond_0
    return-void
.end method
