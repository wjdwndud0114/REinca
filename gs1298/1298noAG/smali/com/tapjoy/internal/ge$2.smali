.class final Lcom/tapjoy/internal/ge$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/internal/ge;->a(Landroid/app/Activity;Lcom/tapjoy/internal/ga;Lcom/tapjoy/internal/ev;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/internal/ga;

.field final synthetic b:Lcom/tapjoy/internal/ge;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/ge;Lcom/tapjoy/internal/ga;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/tapjoy/internal/ge$2;->b:Lcom/tapjoy/internal/ge;

    iput-object p2, p0, Lcom/tapjoy/internal/ge$2;->a:Lcom/tapjoy/internal/ga;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/tapjoy/internal/ge$2;->a:Lcom/tapjoy/internal/ga;

    iget-object v1, p0, Lcom/tapjoy/internal/ge$2;->b:Lcom/tapjoy/internal/ge;

    iget-object v1, v1, Lcom/tapjoy/internal/ge;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/ga;->d(Ljava/lang/String;)V

    .line 169
    return-void
.end method
