.class public final Lcom/tapjoy/internal/ge;
.super Lcom/tapjoy/internal/gg;
.source "SourceFile"


# static fields
.field public static a:Lcom/tapjoy/internal/ge;


# instance fields
.field final b:Lcom/tapjoy/internal/fz;

.field final c:Ljava/lang/String;

.field final d:Lcom/tapjoy/internal/gu;

.field e:Lcom/tapjoy/internal/e;

.field f:J

.field g:Z

.field private l:Z

.field private m:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/tapjoy/internal/fz;Ljava/lang/String;Lcom/tapjoy/internal/gu;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/tapjoy/internal/gg;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/internal/ge;->g:Z

    .line 65
    iput-object p1, p0, Lcom/tapjoy/internal/ge;->b:Lcom/tapjoy/internal/fz;

    .line 66
    iput-object p2, p0, Lcom/tapjoy/internal/ge;->c:Ljava/lang/String;

    .line 67
    iput-object p3, p0, Lcom/tapjoy/internal/ge;->d:Lcom/tapjoy/internal/gu;

    .line 68
    iput-object p4, p0, Lcom/tapjoy/internal/ge;->m:Landroid/content/Context;

    .line 69
    return-void
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 302
    .line 303
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 305
    if-eqz v0, :cond_0

    .line 306
    const-string v1, "tapjoy:hardwareAccelerated"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 307
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 308
    check-cast v0, Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/tapjoy/internal/ge;->d:Lcom/tapjoy/internal/gu;

    .line 1160
    iget-object v1, v0, Lcom/tapjoy/internal/gu;->a:Lcom/tapjoy/internal/gx;

    if-eqz v1, :cond_0

    .line 1161
    iget-object v1, v0, Lcom/tapjoy/internal/gu;->a:Lcom/tapjoy/internal/gx;

    invoke-virtual {v1}, Lcom/tapjoy/internal/gx;->b()V

    .line 1163
    :cond_0
    iget-object v1, v0, Lcom/tapjoy/internal/gu;->b:Lcom/tapjoy/internal/gx;

    if-eqz v1, :cond_1

    .line 1164
    iget-object v1, v0, Lcom/tapjoy/internal/gu;->b:Lcom/tapjoy/internal/gx;

    invoke-virtual {v1}, Lcom/tapjoy/internal/gx;->b()V

    .line 1166
    :cond_1
    iget-object v1, v0, Lcom/tapjoy/internal/gu;->c:Lcom/tapjoy/internal/gx;

    invoke-virtual {v1}, Lcom/tapjoy/internal/gx;->b()V

    .line 1167
    iget-object v1, v0, Lcom/tapjoy/internal/gu;->e:Lcom/tapjoy/internal/gx;

    if-eqz v1, :cond_2

    .line 1168
    iget-object v1, v0, Lcom/tapjoy/internal/gu;->e:Lcom/tapjoy/internal/gx;

    invoke-virtual {v1}, Lcom/tapjoy/internal/gx;->b()V

    .line 1170
    :cond_2
    iget-object v1, v0, Lcom/tapjoy/internal/gu;->f:Lcom/tapjoy/internal/gx;

    if-eqz v1, :cond_3

    .line 1171
    iget-object v1, v0, Lcom/tapjoy/internal/gu;->f:Lcom/tapjoy/internal/gx;

    invoke-virtual {v1}, Lcom/tapjoy/internal/gx;->b()V

    .line 1173
    :cond_3
    iget-object v1, v0, Lcom/tapjoy/internal/gu;->m:Lcom/tapjoy/internal/gv;

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/tapjoy/internal/gu;->m:Lcom/tapjoy/internal/gv;

    iget-object v1, v1, Lcom/tapjoy/internal/gv;->a:Lcom/tapjoy/internal/gx;

    if-eqz v1, :cond_4

    .line 1174
    iget-object v0, v0, Lcom/tapjoy/internal/gu;->m:Lcom/tapjoy/internal/gv;

    iget-object v0, v0, Lcom/tapjoy/internal/gv;->a:Lcom/tapjoy/internal/gx;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gx;->b()V

    .line 81
    :cond_4
    return-void
.end method

.method final a(Landroid/app/Activity;Lcom/tapjoy/internal/ga;Lcom/tapjoy/internal/ev;)V
    .locals 11

    .prologue
    const v10, 0x3e99999a    # 0.3f

    const/4 v1, 0x1

    const/4 v2, 0x0

    const v9, 0x3ecccccd    # 0.4f

    const/high16 v8, 0x3f800000    # 1.0f

    .line 160
    iget-boolean v0, p0, Lcom/tapjoy/internal/ge;->l:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/tapjoy/internal/cs;->a(Z)V

    .line 161
    iput-boolean v1, p0, Lcom/tapjoy/internal/ge;->l:Z

    .line 162
    sput-object p0, Lcom/tapjoy/internal/ge;->a:Lcom/tapjoy/internal/ge;

    .line 164
    new-instance v0, Lcom/tapjoy/internal/e;

    invoke-direct {v0, p1}, Lcom/tapjoy/internal/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tapjoy/internal/ge;->e:Lcom/tapjoy/internal/e;

    .line 165
    iget-object v0, p0, Lcom/tapjoy/internal/ge;->e:Lcom/tapjoy/internal/e;

    new-instance v3, Lcom/tapjoy/internal/ge$2;

    invoke-direct {v3, p0, p2}, Lcom/tapjoy/internal/ge$2;-><init>(Lcom/tapjoy/internal/ge;Lcom/tapjoy/internal/ga;)V

    invoke-virtual {v0, v3}, Lcom/tapjoy/internal/e;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 171
    iget-object v0, p0, Lcom/tapjoy/internal/ge;->e:Lcom/tapjoy/internal/e;

    new-instance v3, Lcom/tapjoy/internal/ge$3;

    invoke-direct {v3, p0, p1, p2}, Lcom/tapjoy/internal/ge$3;-><init>(Lcom/tapjoy/internal/ge;Landroid/app/Activity;Lcom/tapjoy/internal/ga;)V

    invoke-virtual {v0, v3}, Lcom/tapjoy/internal/e;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 201
    iget-object v0, p0, Lcom/tapjoy/internal/ge;->e:Lcom/tapjoy/internal/e;

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/e;->setCanceledOnTouchOutside(Z)V

    .line 203
    new-instance v0, Lcom/tapjoy/internal/hq;

    iget-object v3, p0, Lcom/tapjoy/internal/ge;->d:Lcom/tapjoy/internal/gu;

    new-instance v4, Lcom/tapjoy/internal/ge$4;

    invoke-direct {v4, p0, p1, p2}, Lcom/tapjoy/internal/ge$4;-><init>(Lcom/tapjoy/internal/ge;Landroid/app/Activity;Lcom/tapjoy/internal/ga;)V

    invoke-direct {v0, p1, v3, v4}, Lcom/tapjoy/internal/hq;-><init>(Landroid/content/Context;Lcom/tapjoy/internal/gu;Lcom/tapjoy/internal/hq$a;)V

    .line 234
    new-instance v3, Lcom/tapjoy/internal/hp;

    iget-object v4, p0, Lcom/tapjoy/internal/ge;->d:Lcom/tapjoy/internal/gu;

    invoke-direct {v3, p1, v4, v0}, Lcom/tapjoy/internal/hp;-><init>(Landroid/content/Context;Lcom/tapjoy/internal/gu;Lcom/tapjoy/internal/hq;)V

    .line 237
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 238
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x2

    const/4 v6, -0x2

    const/16 v7, 0x11

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 241
    iget-object v4, p0, Lcom/tapjoy/internal/ge;->e:Lcom/tapjoy/internal/e;

    invoke-virtual {v4, v0}, Lcom/tapjoy/internal/e;->setContentView(Landroid/view/View;)V

    .line 244
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/ge;->e:Lcom/tapjoy/internal/e;

    invoke-virtual {v0}, Lcom/tapjoy/internal/e;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 7285
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-ne v4, v5, :cond_4

    const-string v4, "4.1.2"

    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 7286
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 7287
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/tapjoy/internal/ge;->a(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v0, v2

    .line 244
    :goto_1
    if-eqz v0, :cond_0

    .line 245
    sget v0, Lcom/tapjoy/internal/ai$a;->b:I

    .line 9055
    new-instance v4, Lcom/tapjoy/internal/aj;

    invoke-direct {v4}, Lcom/tapjoy/internal/aj;-><init>()V

    .line 8154
    sget-object v5, Lcom/tapjoy/internal/ai$1;->a:[I

    add-int/lit8 v0, v0, -0x1

    aget v0, v5, v0

    packed-switch v0, :pswitch_data_0

    .line 247
    :goto_2
    invoke-virtual {v4}, Lcom/tapjoy/internal/aj;->b()Lcom/tapjoy/internal/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/ai;->a()Landroid/view/animation/Animation;

    move-result-object v0

    .line 245
    invoke-virtual {v3, v0}, Lcom/tapjoy/internal/hp;->startAnimation(Landroid/view/animation/Animation;)V

    .line 251
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/ge;->e:Lcom/tapjoy/internal/e;

    invoke-virtual {v0}, Lcom/tapjoy/internal/e;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    iget-object v0, p0, Lcom/tapjoy/internal/ge;->e:Lcom/tapjoy/internal/e;

    .line 13070
    invoke-virtual {v0}, Lcom/tapjoy/internal/e;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 259
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_1

    .line 260
    iget-object v0, p0, Lcom/tapjoy/internal/ge;->e:Lcom/tapjoy/internal/e;

    invoke-virtual {v0}, Lcom/tapjoy/internal/e;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    const/16 v2, 0x400

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V

    .line 264
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tapjoy/internal/ge;->f:J

    .line 265
    iget-object v0, p0, Lcom/tapjoy/internal/ge;->b:Lcom/tapjoy/internal/fz;

    iget-object v1, p0, Lcom/tapjoy/internal/ge;->d:Lcom/tapjoy/internal/gu;

    iget-object v1, v1, Lcom/tapjoy/internal/gu;->k:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/fz;->a(Ljava/util/Map;)V

    .line 266
    invoke-virtual {p3}, Lcom/tapjoy/internal/ev;->a()V

    .line 267
    iget-object v0, p0, Lcom/tapjoy/internal/ge;->c:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/tapjoy/internal/ga;->c(Ljava/lang/String;)V

    .line 268
    return-void

    :cond_2
    move v0, v2

    .line 160
    goto/16 :goto_0

    .line 7290
    :cond_3
    const/high16 v4, 0x1000000

    const/high16 v5, 0x1000000

    invoke-virtual {v0, v4, v5}, Landroid/view/Window;->setFlags(II)V

    :cond_4
    move v0, v1

    .line 7293
    goto :goto_1

    .line 9067
    :pswitch_0
    new-instance v0, Lcom/tapjoy/internal/al;

    invoke-direct {v0}, Lcom/tapjoy/internal/al;-><init>()V

    .line 10031
    iput-boolean v2, v0, Lcom/tapjoy/internal/al;->a:Z

    .line 10036
    const/high16 v1, 0x42700000    # 60.0f

    iput v1, v0, Lcom/tapjoy/internal/al;->b:F

    .line 8160
    invoke-virtual {v0}, Lcom/tapjoy/internal/al;->a()Lcom/tapjoy/internal/ak;

    move-result-object v0

    .line 8157
    invoke-virtual {v4, v0}, Lcom/tapjoy/internal/aj;->a(Landroid/view/animation/Animation;)Lcom/tapjoy/internal/aj;

    move-result-object v0

    new-instance v1, Landroid/view/animation/ScaleAnimation;

    invoke-direct {v1, v9, v8, v9, v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    .line 8161
    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/aj;->a(Landroid/view/animation/Animation;)Lcom/tapjoy/internal/aj;

    move-result-object v0

    .line 10059
    new-instance v1, Lcom/tapjoy/internal/am;

    invoke-direct {v1}, Lcom/tapjoy/internal/am;-><init>()V

    .line 8163
    invoke-virtual {v1, v8}, Lcom/tapjoy/internal/am;->a(F)Lcom/tapjoy/internal/am;

    move-result-object v1

    .line 8164
    invoke-virtual {v1, v10}, Lcom/tapjoy/internal/am;->b(F)Lcom/tapjoy/internal/am;

    move-result-object v1

    .line 8165
    invoke-virtual {v1}, Lcom/tapjoy/internal/am;->a()Landroid/view/animation/Animation;

    move-result-object v1

    .line 8162
    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/aj;->a(Landroid/view/animation/Animation;)Lcom/tapjoy/internal/aj;

    goto/16 :goto_2

    .line 10067
    :pswitch_1
    new-instance v0, Lcom/tapjoy/internal/al;

    invoke-direct {v0}, Lcom/tapjoy/internal/al;-><init>()V

    .line 11031
    iput-boolean v2, v0, Lcom/tapjoy/internal/al;->a:Z

    .line 11036
    const/high16 v1, -0x3d900000    # -60.0f

    iput v1, v0, Lcom/tapjoy/internal/al;->b:F

    .line 8172
    invoke-virtual {v0}, Lcom/tapjoy/internal/al;->a()Lcom/tapjoy/internal/ak;

    move-result-object v0

    .line 8169
    invoke-virtual {v4, v0}, Lcom/tapjoy/internal/aj;->a(Landroid/view/animation/Animation;)Lcom/tapjoy/internal/aj;

    move-result-object v0

    new-instance v1, Landroid/view/animation/ScaleAnimation;

    invoke-direct {v1, v9, v8, v9, v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    .line 8173
    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/aj;->a(Landroid/view/animation/Animation;)Lcom/tapjoy/internal/aj;

    move-result-object v0

    .line 11059
    new-instance v1, Lcom/tapjoy/internal/am;

    invoke-direct {v1}, Lcom/tapjoy/internal/am;-><init>()V

    .line 8174
    const v2, -0x41333333    # -0.4f

    .line 8175
    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/am;->a(F)Lcom/tapjoy/internal/am;

    move-result-object v1

    .line 8176
    invoke-virtual {v1, v10}, Lcom/tapjoy/internal/am;->b(F)Lcom/tapjoy/internal/am;

    move-result-object v1

    .line 8177
    invoke-virtual {v1}, Lcom/tapjoy/internal/am;->a()Landroid/view/animation/Animation;

    move-result-object v1

    .line 8174
    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/aj;->a(Landroid/view/animation/Animation;)Lcom/tapjoy/internal/aj;

    goto/16 :goto_2

    .line 11067
    :pswitch_2
    new-instance v0, Lcom/tapjoy/internal/al;

    invoke-direct {v0}, Lcom/tapjoy/internal/al;-><init>()V

    .line 12026
    iput-boolean v1, v0, Lcom/tapjoy/internal/al;->a:Z

    .line 12036
    const/high16 v1, -0x3d900000    # -60.0f

    iput v1, v0, Lcom/tapjoy/internal/al;->b:F

    .line 8184
    invoke-virtual {v0}, Lcom/tapjoy/internal/al;->a()Lcom/tapjoy/internal/ak;

    move-result-object v0

    .line 8181
    invoke-virtual {v4, v0}, Lcom/tapjoy/internal/aj;->a(Landroid/view/animation/Animation;)Lcom/tapjoy/internal/aj;

    move-result-object v0

    new-instance v1, Landroid/view/animation/ScaleAnimation;

    invoke-direct {v1, v9, v8, v9, v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    .line 8185
    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/aj;->a(Landroid/view/animation/Animation;)Lcom/tapjoy/internal/aj;

    move-result-object v0

    .line 12059
    new-instance v1, Lcom/tapjoy/internal/am;

    invoke-direct {v1}, Lcom/tapjoy/internal/am;-><init>()V

    .line 8187
    invoke-virtual {v1, v10}, Lcom/tapjoy/internal/am;->a(F)Lcom/tapjoy/internal/am;

    move-result-object v1

    .line 8188
    invoke-virtual {v1, v8}, Lcom/tapjoy/internal/am;->b(F)Lcom/tapjoy/internal/am;

    move-result-object v1

    .line 8189
    invoke-virtual {v1}, Lcom/tapjoy/internal/am;->a()Landroid/view/animation/Animation;

    move-result-object v1

    .line 8186
    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/aj;->a(Landroid/view/animation/Animation;)Lcom/tapjoy/internal/aj;

    goto/16 :goto_2

    .line 12067
    :pswitch_3
    new-instance v0, Lcom/tapjoy/internal/al;

    invoke-direct {v0}, Lcom/tapjoy/internal/al;-><init>()V

    .line 13026
    iput-boolean v1, v0, Lcom/tapjoy/internal/al;->a:Z

    .line 13036
    const/high16 v1, 0x42700000    # 60.0f

    iput v1, v0, Lcom/tapjoy/internal/al;->b:F

    .line 8196
    invoke-virtual {v0}, Lcom/tapjoy/internal/al;->a()Lcom/tapjoy/internal/ak;

    move-result-object v0

    .line 8193
    invoke-virtual {v4, v0}, Lcom/tapjoy/internal/aj;->a(Landroid/view/animation/Animation;)Lcom/tapjoy/internal/aj;

    move-result-object v0

    new-instance v1, Landroid/view/animation/ScaleAnimation;

    invoke-direct {v1, v9, v8, v9, v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    .line 8197
    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/aj;->a(Landroid/view/animation/Animation;)Lcom/tapjoy/internal/aj;

    move-result-object v0

    .line 13059
    new-instance v1, Lcom/tapjoy/internal/am;

    invoke-direct {v1}, Lcom/tapjoy/internal/am;-><init>()V

    .line 8199
    invoke-virtual {v1, v10}, Lcom/tapjoy/internal/am;->a(F)Lcom/tapjoy/internal/am;

    move-result-object v1

    const v2, -0x41333333    # -0.4f

    .line 8200
    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/am;->b(F)Lcom/tapjoy/internal/am;

    move-result-object v1

    .line 8201
    invoke-virtual {v1}, Lcom/tapjoy/internal/am;->a()Landroid/view/animation/Animation;

    move-result-object v1

    .line 8198
    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/aj;->a(Landroid/view/animation/Animation;)Lcom/tapjoy/internal/aj;

    goto/16 :goto_2

    .line 254
    :catch_0
    move-exception v0

    throw v0

    .line 8154
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final a(Lcom/tapjoy/internal/ga;Lcom/tapjoy/internal/ev;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 93
    iget-object v0, p0, Lcom/tapjoy/internal/ge;->m:Landroid/content/Context;

    invoke-static {v0}, Lcom/tapjoy/internal/c;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    .line 94
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 96
    :try_start_0
    invoke-virtual {p0, v0, p1, p2}, Lcom/tapjoy/internal/ge;->a(Landroid/app/Activity;Lcom/tapjoy/internal/ga;Lcom/tapjoy/internal/ev;)V

    .line 97
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/tapjoy/internal/ge;->c:Ljava/lang/String;

    aput-object v4, v0, v3
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .line 107
    :cond_0
    invoke-static {}, Lcom/tapjoy/internal/fr;->a()Landroid/app/Activity;

    move-result-object v3

    .line 108
    if-eqz v3, :cond_3

    .line 109
    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_2

    move v0, v1

    .line 114
    :goto_1
    invoke-static {}, Lcom/tapjoy/internal/fz;->a()Lcom/tapjoy/internal/fz;

    move-result-object v4

    .line 7183
    iget-object v4, v4, Lcom/tapjoy/internal/fz;->e:Landroid/content/Context;

    .line 116
    :try_start_1
    new-instance v5, Lcom/tapjoy/internal/ge$1;

    invoke-direct {v5, p0, p1, p2}, Lcom/tapjoy/internal/ge$1;-><init>(Lcom/tapjoy/internal/ge;Lcom/tapjoy/internal/ga;Lcom/tapjoy/internal/ev;)V

    invoke-static {v4, v5, v0}, Lcom/tapjoy/TJContentActivity;->start(Landroid/content/Context;Lcom/tapjoy/TJContentActivity$ContentProducer;Z)V

    .line 133
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/tapjoy/internal/ge;->c:Ljava/lang/String;

    aput-object v5, v0, v4
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 141
    :catch_1
    move-exception v0

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 143
    :try_start_2
    invoke-virtual {p0, v3, p1, p2}, Lcom/tapjoy/internal/ge;->a(Landroid/app/Activity;Lcom/tapjoy/internal/ga;Lcom/tapjoy/internal/ev;)V

    .line 144
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/tapjoy/internal/ge;->c:Ljava/lang/String;

    aput-object v4, v0, v3
    :try_end_2
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    .line 152
    :cond_1
    const-string v0, "Failed to show the content for \"{}\" caused by no registration of TJContentActivity"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/tapjoy/internal/ge;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tapjoy/internal/fw;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    iget-object v0, p0, Lcom/tapjoy/internal/ge;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/tapjoy/internal/ge;->k:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/tapjoy/internal/ga;->a(Ljava/lang/String;Ljava/lang/String;Lcom/tapjoy/internal/fl;)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 109
    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method public final b()Z
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/tapjoy/internal/ge;->d:Lcom/tapjoy/internal/gu;

    .line 1179
    iget-object v1, v0, Lcom/tapjoy/internal/gu;->c:Lcom/tapjoy/internal/gx;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/tapjoy/internal/gu;->c:Lcom/tapjoy/internal/gx;

    .line 2045
    iget-object v1, v1, Lcom/tapjoy/internal/gx;->b:Landroid/graphics/Bitmap;

    .line 1179
    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/tapjoy/internal/gu;->m:Lcom/tapjoy/internal/gv;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/tapjoy/internal/gu;->m:Lcom/tapjoy/internal/gv;

    iget-object v1, v1, Lcom/tapjoy/internal/gv;->a:Lcom/tapjoy/internal/gx;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/tapjoy/internal/gu;->m:Lcom/tapjoy/internal/gv;

    iget-object v1, v1, Lcom/tapjoy/internal/gv;->a:Lcom/tapjoy/internal/gx;

    .line 3045
    iget-object v1, v1, Lcom/tapjoy/internal/gx;->b:Landroid/graphics/Bitmap;

    .line 1180
    if-eqz v1, :cond_3

    :cond_0
    iget-object v1, v0, Lcom/tapjoy/internal/gu;->b:Lcom/tapjoy/internal/gx;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/tapjoy/internal/gu;->f:Lcom/tapjoy/internal/gx;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/tapjoy/internal/gu;->b:Lcom/tapjoy/internal/gx;

    .line 4045
    iget-object v1, v1, Lcom/tapjoy/internal/gx;->b:Landroid/graphics/Bitmap;

    .line 1182
    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/tapjoy/internal/gu;->f:Lcom/tapjoy/internal/gx;

    .line 5045
    iget-object v1, v1, Lcom/tapjoy/internal/gx;->b:Landroid/graphics/Bitmap;

    .line 1182
    if-nez v1, :cond_2

    :cond_1
    iget-object v1, v0, Lcom/tapjoy/internal/gu;->a:Lcom/tapjoy/internal/gx;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/tapjoy/internal/gu;->e:Lcom/tapjoy/internal/gx;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/tapjoy/internal/gu;->a:Lcom/tapjoy/internal/gx;

    .line 6045
    iget-object v1, v1, Lcom/tapjoy/internal/gx;->b:Landroid/graphics/Bitmap;

    .line 1184
    if-eqz v1, :cond_3

    iget-object v0, v0, Lcom/tapjoy/internal/gu;->e:Lcom/tapjoy/internal/gx;

    .line 7045
    iget-object v0, v0, Lcom/tapjoy/internal/gx;->b:Landroid/graphics/Bitmap;

    .line 1184
    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    .line 85
    goto :goto_0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/tapjoy/internal/ge;->e:Lcom/tapjoy/internal/e;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/tapjoy/internal/ge;->e:Lcom/tapjoy/internal/e;

    invoke-virtual {v0}, Lcom/tapjoy/internal/e;->dismiss()V

    .line 274
    :cond_0
    return-void
.end method
