.class public final Lcom/tapjoy/internal/fv$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/fv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/internal/fv;


# direct methods
.method public constructor <init>(Lcom/tapjoy/internal/fv;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/tapjoy/internal/fv$1;->a:Lcom/tapjoy/internal/fv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/tapjoy/internal/fv$1;->a:Lcom/tapjoy/internal/fv;

    invoke-static {v0}, Lcom/tapjoy/internal/fv;->a(Lcom/tapjoy/internal/fv;)V

    .line 41
    return-void
.end method
