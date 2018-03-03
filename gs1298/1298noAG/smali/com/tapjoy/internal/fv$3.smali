.class final Lcom/tapjoy/internal/fv$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/internal/fv;->a(Landroid/app/Activity;Lcom/tapjoy/internal/ga;Lcom/tapjoy/internal/ev;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/internal/fv;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/fv;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/tapjoy/internal/fv$3;->a:Lcom/tapjoy/internal/fv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/tapjoy/internal/fv$3;->a:Lcom/tapjoy/internal/fv;

    invoke-static {v0}, Lcom/tapjoy/internal/fv;->a(Lcom/tapjoy/internal/fv;)V

    .line 166
    return-void
.end method
