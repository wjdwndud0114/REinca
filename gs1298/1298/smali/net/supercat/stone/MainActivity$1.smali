.class Lnet/supercat/stone/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/supercat/stone/MainActivity;->setSoftInputMode(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/supercat/stone/MainActivity;

.field final synthetic val$value:I


# direct methods
.method constructor <init>(Lnet/supercat/stone/MainActivity;I)V
    .locals 0
    .param p1, "this$0"    # Lnet/supercat/stone/MainActivity;

    .prologue
    .line 78
    iput-object p1, p0, Lnet/supercat/stone/MainActivity$1;->this$0:Lnet/supercat/stone/MainActivity;

    iput p2, p0, Lnet/supercat/stone/MainActivity$1;->val$value:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lnet/supercat/stone/MainActivity$1;->this$0:Lnet/supercat/stone/MainActivity;

    invoke-virtual {v0}, Lnet/supercat/stone/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget v1, p0, Lnet/supercat/stone/MainActivity$1;->val$value:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 82
    return-void
.end method
