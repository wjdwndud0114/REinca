.class public abstract Lcom/tapjoy/internal/ft;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static a:Lcom/tapjoy/internal/ft;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/tapjoy/internal/ft;->a:Lcom/tapjoy/internal/ft;

    if-eqz v0, :cond_0

    .line 26
    sget-object v0, Lcom/tapjoy/internal/ft;->a:Lcom/tapjoy/internal/ft;

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/ft;->a(Landroid/app/Activity;)V

    .line 28
    :cond_0
    return-void
.end method


# virtual methods
.method public abstract a(Landroid/app/Activity;)V
.end method
