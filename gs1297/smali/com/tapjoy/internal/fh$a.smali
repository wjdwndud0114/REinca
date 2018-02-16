.class final Lcom/tapjoy/internal/fh$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/fh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/internal/fh;

.field private b:I

.field private c:J

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/fh;IJLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1

    .prologue
    .line 47
    iput-object p1, p0, Lcom/tapjoy/internal/fh$a;->a:Lcom/tapjoy/internal/fh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p2, p0, Lcom/tapjoy/internal/fh$a;->b:I

    .line 49
    iput-wide p3, p0, Lcom/tapjoy/internal/fh$a;->c:J

    .line 50
    iput-object p5, p0, Lcom/tapjoy/internal/fh$a;->d:Ljava/lang/String;

    .line 51
    iput-object p6, p0, Lcom/tapjoy/internal/fh$a;->e:Ljava/lang/String;

    .line 52
    iput-object p7, p0, Lcom/tapjoy/internal/fh$a;->f:Ljava/util/Map;

    .line 53
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    .line 58
    :try_start_0
    iget v0, p0, Lcom/tapjoy/internal/fh$a;->b:I

    packed-switch v0, :pswitch_data_0

    .line 72
    :goto_0
    return-void

    .line 60
    :pswitch_0
    iget-object v0, p0, Lcom/tapjoy/internal/fh$a;->a:Lcom/tapjoy/internal/fh;

    iget-wide v2, p0, Lcom/tapjoy/internal/fh$a;->c:J

    invoke-static {v0, v2, v3}, Lcom/tapjoy/internal/fh;->a(Lcom/tapjoy/internal/fh;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 70
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/tapjoy/internal/fh$a;->a:Lcom/tapjoy/internal/fh;

    invoke-static {v0}, Lcom/tapjoy/internal/fh;->c(Lcom/tapjoy/internal/fh;)V

    goto :goto_0

    .line 63
    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/tapjoy/internal/fh$a;->a:Lcom/tapjoy/internal/fh;

    invoke-static {v0}, Lcom/tapjoy/internal/fh;->b(Lcom/tapjoy/internal/fh;)V

    goto :goto_0

    .line 66
    :pswitch_2
    iget-object v1, p0, Lcom/tapjoy/internal/fh$a;->a:Lcom/tapjoy/internal/fh;

    iget-wide v2, p0, Lcom/tapjoy/internal/fh$a;->c:J

    iget-object v4, p0, Lcom/tapjoy/internal/fh$a;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/tapjoy/internal/fh$a;->e:Ljava/lang/String;

    iget-object v6, p0, Lcom/tapjoy/internal/fh$a;->f:Ljava/util/Map;

    invoke-static/range {v1 .. v6}, Lcom/tapjoy/internal/fh;->a(Lcom/tapjoy/internal/fh;JLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 58
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
