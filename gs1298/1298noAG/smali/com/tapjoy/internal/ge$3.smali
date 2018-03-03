.class final Lcom/tapjoy/internal/ge$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/internal/ge;->a(Landroid/app/Activity;Lcom/tapjoy/internal/ga;Lcom/tapjoy/internal/ev;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/tapjoy/internal/ga;

.field final synthetic c:Lcom/tapjoy/internal/ge;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/ge;Landroid/app/Activity;Lcom/tapjoy/internal/ga;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/tapjoy/internal/ge$3;->c:Lcom/tapjoy/internal/ge;

    iput-object p2, p0, Lcom/tapjoy/internal/ge$3;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/tapjoy/internal/ge$3;->b:Lcom/tapjoy/internal/ga;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 1038
    const/4 v0, 0x0

    sput-object v0, Lcom/tapjoy/internal/ge;->a:Lcom/tapjoy/internal/ge;

    .line 175
    iget-object v0, p0, Lcom/tapjoy/internal/ge$3;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/tapjoy/internal/ge$3;->c:Lcom/tapjoy/internal/ge;

    iget-object v1, v1, Lcom/tapjoy/internal/ge;->d:Lcom/tapjoy/internal/gu;

    iget-object v1, v1, Lcom/tapjoy/internal/gu;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tapjoy/internal/gg;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/tapjoy/internal/ge$3;->c:Lcom/tapjoy/internal/ge;

    .line 2038
    iget-object v0, v0, Lcom/tapjoy/internal/ge;->b:Lcom/tapjoy/internal/fz;

    .line 177
    iget-object v1, p0, Lcom/tapjoy/internal/ge$3;->c:Lcom/tapjoy/internal/ge;

    iget-object v1, v1, Lcom/tapjoy/internal/ge;->d:Lcom/tapjoy/internal/gu;

    iget-object v1, v1, Lcom/tapjoy/internal/gu;->k:Ljava/util/Map;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/tapjoy/internal/ge$3;->c:Lcom/tapjoy/internal/ge;

    .line 3038
    iget-wide v4, v4, Lcom/tapjoy/internal/ge;->f:J

    .line 177
    sub-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/tapjoy/internal/fz;->a(Ljava/util/Map;J)V

    .line 179
    iget-object v0, p0, Lcom/tapjoy/internal/ge$3;->c:Lcom/tapjoy/internal/ge;

    iget-boolean v0, v0, Lcom/tapjoy/internal/ge;->i:Z

    if-nez v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/tapjoy/internal/ge$3;->b:Lcom/tapjoy/internal/ga;

    iget-object v1, p0, Lcom/tapjoy/internal/ge$3;->c:Lcom/tapjoy/internal/ge;

    iget-object v1, v1, Lcom/tapjoy/internal/ge;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/tapjoy/internal/ge$3;->c:Lcom/tapjoy/internal/ge;

    iget-object v2, v2, Lcom/tapjoy/internal/ge;->k:Ljava/lang/String;

    iget-object v3, p0, Lcom/tapjoy/internal/ge$3;->c:Lcom/tapjoy/internal/ge;

    iget-object v3, v3, Lcom/tapjoy/internal/ge;->d:Lcom/tapjoy/internal/gu;

    iget-object v3, v3, Lcom/tapjoy/internal/gu;->h:Lcom/tapjoy/internal/fl;

    invoke-virtual {v0, v1, v2, v3}, Lcom/tapjoy/internal/ga;->a(Ljava/lang/String;Ljava/lang/String;Lcom/tapjoy/internal/fl;)V

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/ge$3;->c:Lcom/tapjoy/internal/ge;

    .line 4038
    iget-boolean v0, v0, Lcom/tapjoy/internal/ge;->g:Z

    .line 183
    if-eqz v0, :cond_4

    .line 184
    iget-object v0, p0, Lcom/tapjoy/internal/ge$3;->c:Lcom/tapjoy/internal/ge;

    iget-object v0, v0, Lcom/tapjoy/internal/ge;->d:Lcom/tapjoy/internal/gu;

    iget-object v0, v0, Lcom/tapjoy/internal/gu;->k:Ljava/util/Map;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tapjoy/internal/ge$3;->c:Lcom/tapjoy/internal/ge;

    iget-object v0, v0, Lcom/tapjoy/internal/ge;->d:Lcom/tapjoy/internal/gu;

    iget-object v0, v0, Lcom/tapjoy/internal/gu;->k:Ljava/util/Map;

    const-string v1, "action_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 185
    iget-object v0, p0, Lcom/tapjoy/internal/ge$3;->c:Lcom/tapjoy/internal/ge;

    iget-object v0, v0, Lcom/tapjoy/internal/ge;->d:Lcom/tapjoy/internal/gu;

    iget-object v0, v0, Lcom/tapjoy/internal/gu;->k:Ljava/util/Map;

    const-string v1, "action_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 186
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 187
    iget-object v0, p0, Lcom/tapjoy/internal/ge$3;->c:Lcom/tapjoy/internal/ge;

    .line 5038
    iget-object v0, v0, Lcom/tapjoy/internal/ge;->b:Lcom/tapjoy/internal/fz;

    .line 5886
    iget-object v2, v0, Lcom/tapjoy/internal/fz;->b:Lcom/tapjoy/internal/gi;

    if-eqz v2, :cond_4

    .line 5888
    iget-object v3, v0, Lcom/tapjoy/internal/fz;->b:Lcom/tapjoy/internal/gi;

    .line 6055
    invoke-static {}, Lcom/tapjoy/internal/gi;->a()Ljava/lang/String;

    move-result-object v2

    .line 6056
    iget-object v0, v3, Lcom/tapjoy/internal/gi;->b:Lcom/tapjoy/internal/q;

    invoke-virtual {v0}, Lcom/tapjoy/internal/q;->a()Ljava/lang/String;

    move-result-object v0

    .line 6057
    iget-object v4, v3, Lcom/tapjoy/internal/gi;->a:Lcom/tapjoy/internal/q;

    invoke-virtual {v4}, Lcom/tapjoy/internal/q;->a()Ljava/lang/String;

    move-result-object v4

    .line 6059
    if-eqz v4, :cond_1

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 6060
    :cond_1
    iget-object v0, v3, Lcom/tapjoy/internal/gi;->a:Lcom/tapjoy/internal/q;

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/q;->a(Ljava/lang/String;)V

    .line 6061
    const-string v0, ""

    .line 7010
    :cond_2
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_6

    const/4 v2, 0x1

    .line 6063
    :goto_0
    if-eqz v2, :cond_7

    move-object v0, v1

    .line 6068
    :cond_3
    :goto_1
    iget-object v1, v3, Lcom/tapjoy/internal/gi;->b:Lcom/tapjoy/internal/q;

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/q;->a(Ljava/lang/String;)V

    .line 192
    :cond_4
    iget-object v0, p0, Lcom/tapjoy/internal/ge$3;->a:Landroid/app/Activity;

    instance-of v0, v0, Lcom/tapjoy/TJContentActivity;

    if-eqz v0, :cond_5

    .line 193
    iget-object v0, p0, Lcom/tapjoy/internal/ge$3;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 195
    :cond_5
    return-void

    .line 7010
    :cond_6
    const/4 v2, 0x0

    goto :goto_0

    .line 6065
    :cond_7
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 6066
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
