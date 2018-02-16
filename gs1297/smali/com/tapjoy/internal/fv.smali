.class public final Lcom/tapjoy/internal/fv;
.super Lcom/tapjoy/internal/gg;
.source "SourceFile"


# static fields
.field public static a:Lcom/tapjoy/internal/fv;


# instance fields
.field final b:Lcom/tapjoy/internal/fz;

.field final c:Ljava/lang/String;

.field final d:Lcom/tapjoy/internal/gr;

.field private e:Z

.field private f:Z

.field private g:J

.field private l:Landroid/content/Context;

.field private m:Lcom/tapjoy/internal/ho;

.field private n:Landroid/app/Activity;

.field private o:Lcom/tapjoy/internal/ga;

.field private p:Landroid/os/Handler;

.field private q:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/tapjoy/internal/fz;Ljava/lang/String;Lcom/tapjoy/internal/gr;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/tapjoy/internal/gg;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/tapjoy/internal/fv;->b:Lcom/tapjoy/internal/fz;

    .line 64
    iput-object p2, p0, Lcom/tapjoy/internal/fv;->c:Ljava/lang/String;

    .line 65
    iput-object p3, p0, Lcom/tapjoy/internal/fv;->d:Lcom/tapjoy/internal/gr;

    .line 66
    iput-object p4, p0, Lcom/tapjoy/internal/fv;->l:Landroid/content/Context;

    .line 67
    return-void
.end method

.method private a(Landroid/app/Activity;Lcom/tapjoy/internal/ga;Lcom/tapjoy/internal/ev;)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v1, 0x1

    .line 120
    iget-boolean v0, p0, Lcom/tapjoy/internal/fv;->e:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/tapjoy/internal/cs;->a(Z)V

    .line 121
    iput-boolean v1, p0, Lcom/tapjoy/internal/fv;->e:Z

    .line 122
    iput-boolean v1, p0, Lcom/tapjoy/internal/fv;->f:Z

    .line 123
    sput-object p0, Lcom/tapjoy/internal/fv;->a:Lcom/tapjoy/internal/fv;

    .line 125
    new-instance v0, Lcom/tapjoy/internal/ho;

    iget-object v1, p0, Lcom/tapjoy/internal/fv;->d:Lcom/tapjoy/internal/gr;

    new-instance v2, Lcom/tapjoy/internal/fv$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/tapjoy/internal/fv$2;-><init>(Lcom/tapjoy/internal/fv;Landroid/app/Activity;Lcom/tapjoy/internal/ga;)V

    invoke-direct {v0, p1, v1, v2}, Lcom/tapjoy/internal/ho;-><init>(Landroid/content/Context;Lcom/tapjoy/internal/gr;Lcom/tapjoy/internal/ho$a;)V

    iput-object v0, p0, Lcom/tapjoy/internal/fv;->m:Lcom/tapjoy/internal/ho;

    .line 151
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/fv;->m:Lcom/tapjoy/internal/ho;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x11

    invoke-direct {v2, v4, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 3033
    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v3

    .line 3034
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 3035
    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3036
    invoke-virtual {v0, v3}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 155
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tapjoy/internal/fv;->g:J

    .line 156
    iget-object v0, p0, Lcom/tapjoy/internal/fv;->b:Lcom/tapjoy/internal/fz;

    iget-object v1, p0, Lcom/tapjoy/internal/fv;->d:Lcom/tapjoy/internal/gr;

    iget-object v1, v1, Lcom/tapjoy/internal/gr;->b:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/fz;->a(Ljava/util/Map;)V

    .line 157
    invoke-virtual {p3}, Lcom/tapjoy/internal/ev;->a()V

    .line 158
    iget-object v0, p0, Lcom/tapjoy/internal/fv;->c:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/tapjoy/internal/ga;->c(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/tapjoy/internal/fv;->d:Lcom/tapjoy/internal/gr;

    iget v0, v0, Lcom/tapjoy/internal/gr;->c:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 161
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tapjoy/internal/fv;->p:Landroid/os/Handler;

    .line 162
    new-instance v0, Lcom/tapjoy/internal/fv$3;

    invoke-direct {v0, p0}, Lcom/tapjoy/internal/fv$3;-><init>(Lcom/tapjoy/internal/fv;)V

    iput-object v0, p0, Lcom/tapjoy/internal/fv;->q:Ljava/lang/Runnable;

    .line 168
    iget-object v0, p0, Lcom/tapjoy/internal/fv;->p:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tapjoy/internal/fv;->q:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/tapjoy/internal/fv;->d:Lcom/tapjoy/internal/gr;

    iget v2, v2, Lcom/tapjoy/internal/gr;->c:F

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v2, v3

    float-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 170
    :cond_0
    return-void

    .line 120
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/tapjoy/internal/fv;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 30
    .line 3173
    iget-boolean v0, p0, Lcom/tapjoy/internal/fv;->f:Z

    if-eqz v0, :cond_5

    .line 3176
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/internal/fv;->f:Z

    .line 3178
    iget-object v0, p0, Lcom/tapjoy/internal/fv;->p:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 3179
    iget-object v0, p0, Lcom/tapjoy/internal/fv;->p:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tapjoy/internal/fv;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3180
    iput-object v6, p0, Lcom/tapjoy/internal/fv;->q:Ljava/lang/Runnable;

    .line 3181
    iput-object v6, p0, Lcom/tapjoy/internal/fv;->p:Landroid/os/Handler;

    .line 3184
    :cond_0
    sget-object v0, Lcom/tapjoy/internal/fv;->a:Lcom/tapjoy/internal/fv;

    if-ne v0, p0, :cond_1

    .line 3185
    sput-object v6, Lcom/tapjoy/internal/fv;->a:Lcom/tapjoy/internal/fv;

    .line 3188
    :cond_1
    iget-object v0, p0, Lcom/tapjoy/internal/fv;->b:Lcom/tapjoy/internal/fz;

    iget-object v1, p0, Lcom/tapjoy/internal/fv;->d:Lcom/tapjoy/internal/gr;

    iget-object v1, v1, Lcom/tapjoy/internal/gr;->b:Ljava/util/Map;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/tapjoy/internal/fv;->g:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/tapjoy/internal/fz;->a(Ljava/util/Map;J)V

    .line 3190
    iget-boolean v0, p0, Lcom/tapjoy/internal/fv;->i:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tapjoy/internal/fv;->o:Lcom/tapjoy/internal/ga;

    if-eqz v0, :cond_2

    .line 3191
    iget-object v0, p0, Lcom/tapjoy/internal/fv;->o:Lcom/tapjoy/internal/ga;

    iget-object v1, p0, Lcom/tapjoy/internal/fv;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/tapjoy/internal/fv;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v6}, Lcom/tapjoy/internal/ga;->a(Ljava/lang/String;Ljava/lang/String;Lcom/tapjoy/internal/fl;)V

    .line 3192
    iput-object v6, p0, Lcom/tapjoy/internal/fv;->o:Lcom/tapjoy/internal/ga;

    .line 3204
    :cond_2
    iget-object v0, p0, Lcom/tapjoy/internal/fv;->m:Lcom/tapjoy/internal/ho;

    invoke-virtual {v0}, Lcom/tapjoy/internal/ho;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3205
    if-eqz v0, :cond_3

    .line 3206
    iget-object v1, p0, Lcom/tapjoy/internal/fv;->m:Lcom/tapjoy/internal/ho;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3208
    :cond_3
    iput-object v6, p0, Lcom/tapjoy/internal/fv;->m:Lcom/tapjoy/internal/ho;

    .line 3197
    iget-object v0, p0, Lcom/tapjoy/internal/fv;->n:Landroid/app/Activity;

    instance-of v0, v0, Lcom/tapjoy/TJContentActivity;

    if-eqz v0, :cond_4

    .line 3198
    iget-object v0, p0, Lcom/tapjoy/internal/fv;->n:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 3200
    :cond_4
    iput-object v6, p0, Lcom/tapjoy/internal/fv;->n:Landroid/app/Activity;

    .line 30
    :cond_5
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 71
    iget-object v0, p0, Lcom/tapjoy/internal/fv;->d:Lcom/tapjoy/internal/gr;

    .line 1070
    iget-object v0, v0, Lcom/tapjoy/internal/gr;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/ha;

    .line 1084
    iget-object v0, v0, Lcom/tapjoy/internal/ha;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/gz;

    .line 1085
    iget-object v3, v0, Lcom/tapjoy/internal/gz;->l:Lcom/tapjoy/internal/gx;

    if-eqz v3, :cond_2

    .line 1086
    iget-object v3, v0, Lcom/tapjoy/internal/gz;->l:Lcom/tapjoy/internal/gx;

    invoke-virtual {v3}, Lcom/tapjoy/internal/gx;->b()V

    .line 1088
    :cond_2
    iget-object v3, v0, Lcom/tapjoy/internal/gz;->m:Lcom/tapjoy/internal/gx;

    if-eqz v3, :cond_1

    .line 1089
    iget-object v0, v0, Lcom/tapjoy/internal/gz;->m:Lcom/tapjoy/internal/gx;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gx;->b()V

    goto :goto_0

    .line 72
    :cond_3
    return-void
.end method

.method public final a(Lcom/tapjoy/internal/ga;Lcom/tapjoy/internal/ev;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 82
    iput-object p1, p0, Lcom/tapjoy/internal/fv;->o:Lcom/tapjoy/internal/ga;

    .line 85
    invoke-static {}, Lcom/tapjoy/internal/fr;->a()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/fv;->n:Landroid/app/Activity;

    .line 87
    iget-object v0, p0, Lcom/tapjoy/internal/fv;->n:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/fv;->n:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/fv;->n:Landroid/app/Activity;

    invoke-direct {p0, v0, p1, p2}, Lcom/tapjoy/internal/fv;->a(Landroid/app/Activity;Lcom/tapjoy/internal/ga;Lcom/tapjoy/internal/ev;)V

    .line 90
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/tapjoy/internal/fv;->c:Ljava/lang/String;

    aput-object v2, v0, v1
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/fv;->l:Landroid/content/Context;

    invoke-static {v0}, Lcom/tapjoy/internal/c;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/fv;->n:Landroid/app/Activity;

    .line 100
    iget-object v0, p0, Lcom/tapjoy/internal/fv;->n:Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tapjoy/internal/fv;->n:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 102
    :try_start_1
    iget-object v0, p0, Lcom/tapjoy/internal/fv;->n:Landroid/app/Activity;

    invoke-direct {p0, v0, p1, p2}, Lcom/tapjoy/internal/fv;->a(Landroid/app/Activity;Lcom/tapjoy/internal/ga;Lcom/tapjoy/internal/ev;)V

    .line 103
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/tapjoy/internal/fv;->c:Ljava/lang/String;

    aput-object v2, v0, v1
    :try_end_1
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 111
    :cond_1
    const-string v0, "Failed to show the content for \"{}\". No usable activity found."

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/tapjoy/internal/fv;->c:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/tapjoy/internal/fw;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    iget-object v0, p0, Lcom/tapjoy/internal/fv;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/tapjoy/internal/fv;->k:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/tapjoy/internal/ga;->a(Ljava/lang/String;Ljava/lang/String;Lcom/tapjoy/internal/fl;)V

    goto :goto_0
.end method

.method public final b()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 76
    iget-object v0, p0, Lcom/tapjoy/internal/fv;->d:Lcom/tapjoy/internal/gr;

    .line 2077
    iget-object v0, v0, Lcom/tapjoy/internal/gr;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v0, v1

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/ha;

    .line 2096
    iget-object v0, v0, Lcom/tapjoy/internal/ha;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/gz;

    .line 2097
    iget-object v5, v0, Lcom/tapjoy/internal/gz;->l:Lcom/tapjoy/internal/gx;

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/tapjoy/internal/gz;->l:Lcom/tapjoy/internal/gx;

    invoke-virtual {v5}, Lcom/tapjoy/internal/gx;->a()Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    iget-object v5, v0, Lcom/tapjoy/internal/gz;->m:Lcom/tapjoy/internal/gx;

    if-eqz v5, :cond_1

    iget-object v0, v0, Lcom/tapjoy/internal/gz;->m:Lcom/tapjoy/internal/gx;

    .line 2098
    invoke-virtual {v0}, Lcom/tapjoy/internal/gx;->a()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_3
    move v0, v2

    .line 2079
    :goto_0
    if-nez v0, :cond_0

    move v0, v2

    .line 2080
    :cond_4
    return v0

    :cond_5
    move v0, v1

    goto :goto_0
.end method
