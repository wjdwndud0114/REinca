.class final synthetic Lcom/tapjoy/mraid/view/MraidView$6;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/mraid/view/MraidView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 594
    invoke-static {}, Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;->values()[Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/tapjoy/mraid/view/MraidView$6;->a:[I

    :try_start_0
    sget-object v0, Lcom/tapjoy/mraid/view/MraidView$6;->a:[I

    sget-object v1, Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;->DEFAULT:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    invoke-virtual {v1}, Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
