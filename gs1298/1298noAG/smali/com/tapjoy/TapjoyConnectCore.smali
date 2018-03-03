.class public Lcom/tapjoy/TapjoyConnectCore;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/TapjoyConnectCore$PPAThread;,
        Lcom/tapjoy/TapjoyConnectCore$a;
    }
.end annotation


# static fields
.field private static A:I = 0x0

.field private static B:F = 0.0f

.field private static C:I = 0x0

.field private static D:Ljava/lang/String; = null

.field public static final DEFAULT_CURRENCY_MULTIPLIER:F = 1.0f

.field private static E:Z

.field private static F:Ljava/lang/String;

.field private static G:Ljava/lang/String;

.field private static H:Ljava/lang/String;

.field private static I:Ljava/lang/String;

.field private static J:Ljava/lang/String;

.field private static K:Ljava/lang/String;

.field private static L:Ljava/lang/String;

.field private static M:Ljava/lang/String;

.field private static N:Ljava/lang/String;

.field private static O:Ljava/lang/String;

.field private static P:Ljava/lang/String;

.field private static Q:Ljava/lang/String;

.field private static R:Ljava/lang/String;

.field private static S:F

.field private static T:Z

.field private static U:Ljava/lang/String;

.field private static V:Ljava/lang/String;

.field private static W:Ljava/lang/String;

.field private static X:Ljava/lang/String;

.field private static Y:Ljava/lang/String;

.field protected static a:I

.field private static aA:Ljava/util/Set;

.field private static aB:Ljava/lang/Integer;

.field private static aC:Ljava/lang/Integer;

.field private static aD:Ljava/lang/Integer;

.field private static aE:Ljava/lang/Long;

.field private static aF:Ljava/lang/Long;

.field private static aG:Ljava/lang/Long;

.field private static aH:Ljava/lang/String;

.field private static aI:Ljava/lang/Integer;

.field private static aJ:Ljava/lang/Double;

.field private static aK:Ljava/lang/Double;

.field private static aL:Ljava/lang/Long;

.field private static aM:Ljava/lang/Integer;

.field private static aN:Ljava/lang/Integer;

.field private static aO:Ljava/lang/Integer;

.field private static aP:Ljava/lang/String;

.field private static aQ:Ljava/lang/String;

.field private static aR:Ljava/lang/String;

.field private static ac:J

.field private static ae:Z

.field private static af:Landroid/content/pm/PackageManager;

.field private static ah:Ljava/util/Hashtable;

.field private static ai:Ljava/lang/String;

.field private static aj:Ljava/util/Map;

.field private static ak:Ljava/lang/String;

.field private static al:Ljava/lang/String;

.field private static am:Ljava/lang/String;

.field private static an:Ljava/lang/String;

.field private static ao:Ljava/lang/Integer;

.field private static ap:Ljava/lang/String;

.field private static aq:Ljava/lang/String;

.field private static ar:Ljava/lang/Long;

.field private static as:Ljava/lang/String;

.field private static at:Ljava/lang/Integer;

.field private static au:Ljava/lang/Integer;

.field private static av:Ljava/lang/String;

.field private static aw:Ljava/lang/String;

.field private static ax:Ljava/lang/String;

.field private static ay:Ljava/lang/String;

.field private static az:Ljava/lang/String;

.field protected static b:I

.field protected static c:Ljava/lang/String;

.field protected static d:Z

.field protected static e:Ljava/lang/String;

.field protected static f:Ljava/lang/String;

.field private static g:Landroid/content/Context;

.field private static h:Ljava/lang/String;

.field private static i:Lcom/tapjoy/TapjoyConnectCore;

.field private static j:Lcom/tapjoy/TapjoyURLConnection;

.field private static k:Lcom/tapjoy/TJConnectListener;

.field private static l:Lcom/tapjoy/TJSetUserIDListener;

.field private static m:Ljava/util/Vector;

.field private static n:Ljava/lang/String;

.field private static o:Ljava/lang/String;

.field private static p:Ljava/lang/String;

.field private static q:Ljava/lang/String;

.field private static r:Ljava/lang/String;

.field private static s:Ljava/lang/String;

.field private static t:Ljava/lang/String;

.field private static u:Ljava/lang/String;

.field private static v:Ljava/lang/String;

.field private static w:Ljava/lang/String;

.field private static x:Ljava/lang/String;

.field private static y:Ljava/lang/String;

.field private static z:Ljava/lang/String;


# instance fields
.field private Z:J

.field private aa:Ljava/util/Timer;

.field private ab:Z

.field private ad:Z

.field private ag:Lcom/tapjoy/TapjoyGpsHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 72
    sput-object v2, Lcom/tapjoy/TapjoyConnectCore;->g:Landroid/content/Context;

    .line 73
    sput-object v2, Lcom/tapjoy/TapjoyConnectCore;->h:Ljava/lang/String;

    .line 75
    sput-object v2, Lcom/tapjoy/TapjoyConnectCore;->i:Lcom/tapjoy/TapjoyConnectCore;

    .line 76
    sput-object v2, Lcom/tapjoy/TapjoyConnectCore;->j:Lcom/tapjoy/TapjoyURLConnection;

    .line 77
    sput-object v2, Lcom/tapjoy/TapjoyConnectCore;->k:Lcom/tapjoy/TJConnectListener;

    .line 78
    sput-object v2, Lcom/tapjoy/TapjoyConnectCore;->l:Lcom/tapjoy/TJSetUserIDListener;

    .line 81
    new-instance v0, Ljava/util/Vector;

    sget-object v1, Lcom/tapjoy/TapjoyConstants;->dependencyClassNames:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->m:Ljava/util/Vector;

    .line 84
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->n:Ljava/lang/String;

    .line 85
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->o:Ljava/lang/String;

    .line 86
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->p:Ljava/lang/String;

    .line 87
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->q:Ljava/lang/String;

    .line 88
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->r:Ljava/lang/String;

    .line 89
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->s:Ljava/lang/String;

    .line 90
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->t:Ljava/lang/String;

    .line 91
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->u:Ljava/lang/String;

    .line 92
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->v:Ljava/lang/String;

    .line 93
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->w:Ljava/lang/String;

    .line 94
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->x:Ljava/lang/String;

    .line 95
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->y:Ljava/lang/String;

    .line 96
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->z:Ljava/lang/String;

    .line 97
    sput v5, Lcom/tapjoy/TapjoyConnectCore;->A:I

    .line 98
    sput v4, Lcom/tapjoy/TapjoyConnectCore;->B:F

    .line 99
    sput v5, Lcom/tapjoy/TapjoyConnectCore;->C:I

    .line 100
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->D:Ljava/lang/String;

    .line 101
    sput-boolean v3, Lcom/tapjoy/TapjoyConnectCore;->E:Z

    .line 103
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->F:Ljava/lang/String;

    .line 104
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->G:Ljava/lang/String;

    .line 105
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->H:Ljava/lang/String;

    .line 106
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->I:Ljava/lang/String;

    .line 107
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->J:Ljava/lang/String;

    .line 108
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->K:Ljava/lang/String;

    .line 109
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->L:Ljava/lang/String;

    .line 110
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->M:Ljava/lang/String;

    .line 112
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->N:Ljava/lang/String;

    .line 113
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->O:Ljava/lang/String;

    .line 115
    const-string v0, "native"

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->P:Ljava/lang/String;

    .line 116
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->Q:Ljava/lang/String;

    .line 118
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->R:Ljava/lang/String;

    .line 120
    sput v4, Lcom/tapjoy/TapjoyConnectCore;->S:F

    .line 122
    sput-boolean v3, Lcom/tapjoy/TapjoyConnectCore;->T:Z

    .line 125
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->U:Ljava/lang/String;

    .line 126
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->V:Ljava/lang/String;

    .line 127
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->W:Ljava/lang/String;

    .line 128
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->X:Ljava/lang/String;

    .line 136
    sput-object v2, Lcom/tapjoy/TapjoyConnectCore;->Y:Ljava/lang/String;

    .line 141
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/tapjoy/TapjoyConnectCore;->ac:J

    .line 149
    sput v3, Lcom/tapjoy/TapjoyConnectCore;->a:I

    .line 150
    sput v3, Lcom/tapjoy/TapjoyConnectCore;->b:I

    .line 152
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->c:Ljava/lang/String;

    .line 154
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->e:Ljava/lang/String;

    .line 155
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->f:Ljava/lang/String;

    .line 157
    sget-object v0, Lcom/tapjoy/TapjoyConnectFlag;->CONNECT_FLAG_DEFAULTS:Ljava/util/Hashtable;

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->ah:Ljava/util/Hashtable;

    .line 158
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->ai:Ljava/lang/String;

    .line 160
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->aj:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "applicationContext"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/tapjoy/TapjoyConnectCore;->Z:J

    .line 138
    iput-object v0, p0, Lcom/tapjoy/TapjoyConnectCore;->aa:Ljava/util/Timer;

    .line 140
    iput-boolean v2, p0, Lcom/tapjoy/TapjoyConnectCore;->ab:Z

    .line 142
    iput-boolean v2, p0, Lcom/tapjoy/TapjoyConnectCore;->ad:Z

    .line 281
    sput-object p1, Lcom/tapjoy/TapjoyConnectCore;->g:Landroid/content/Context;

    .line 282
    invoke-static {}, Lcom/tapjoy/internal/ez;->a()Lcom/tapjoy/internal/ez;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/ez;->a(Landroid/content/Context;)V

    .line 283
    new-instance v0, Lcom/tapjoy/TapjoyURLConnection;

    invoke-direct {v0}, Lcom/tapjoy/TapjoyURLConnection;-><init>()V

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->j:Lcom/tapjoy/TapjoyURLConnection;

    .line 284
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->af:Landroid/content/pm/PackageManager;

    .line 285
    new-instance v0, Lcom/tapjoy/TapjoyGpsHelper;

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->g:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/tapjoy/TapjoyGpsHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tapjoy/TapjoyConnectCore;->ag:Lcom/tapjoy/TapjoyGpsHelper;

    .line 5097
    :try_start_0
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->ah:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 5098
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->ah:Ljava/util/Hashtable;

    .line 5101
    :cond_0
    const-string v0, "TJC_OPTION_ENABLE_LOGGING"

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "TJC_OPTION_ENABLE_LOGGING"

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5102
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/tapjoy/TapjoyLog;->setDebugEnabled(Z)V

    .line 5105
    :cond_1
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->k()V

    .line 5153
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 5158
    const-string v3, "raw/tapjoy_config"

    const/4 v4, 0x0

    sget-object v5, Lcom/tapjoy/TapjoyConnectCore;->g:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 5159
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V
    :try_end_0
    .catch Lcom/tapjoy/TapjoyIntegrationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/tapjoy/TapjoyException; {:try_start_0 .. :try_end_0} :catch_3

    .line 5162
    :try_start_1
    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->g:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 5163
    invoke-static {v3}, Lcom/tapjoy/TapjoyConnectCore;->a(Ljava/util/Properties;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9
    .catch Lcom/tapjoy/TapjoyIntegrationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/tapjoy/TapjoyException; {:try_start_1 .. :try_end_1} :catch_3

    .line 4699
    :goto_0
    :try_start_2
    const-string v0, "unit_test_mode"

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    if-ne v0, v3, :cond_2

    .line 4700
    invoke-direct {p0}, Lcom/tapjoy/TapjoyConnectCore;->l()V

    .line 5812
    :cond_2
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "android_id"

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5815
    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->n:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 5816
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->n:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->n:Ljava/lang/String;
    :try_end_2
    .catch Lcom/tapjoy/TapjoyIntegrationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/tapjoy/TapjoyException; {:try_start_2 .. :try_end_2} :catch_3

    .line 5821
    :cond_3
    :try_start_3
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->af:Landroid/content/pm/PackageManager;

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->g:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->x:Ljava/lang/String;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/tapjoy/TapjoyIntegrationException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/tapjoy/TapjoyException; {:try_start_3 .. :try_end_3} :catch_3

    .line 5828
    :try_start_4
    const-string v0, "android"

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->u:Ljava/lang/String;

    .line 5829
    const-string v0, "android"

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->F:Ljava/lang/String;

    .line 5832
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->s:Ljava/lang/String;

    .line 5833
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->t:Ljava/lang/String;

    .line 5836
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->v:Ljava/lang/String;

    .line 5839
    const-string v0, "11.10.1"

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->y:Ljava/lang/String;

    .line 5840
    const-string v0, "1.0.8"

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->z:Ljava/lang/String;
    :try_end_4
    .catch Lcom/tapjoy/TapjoyIntegrationException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/tapjoy/TapjoyException; {:try_start_4 .. :try_end_4} :catch_3

    .line 5860
    :try_start_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v6, :cond_4

    .line 5862
    new-instance v0, Lcom/tapjoy/TapjoyDisplayMetricsUtil;

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->g:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/tapjoy/TapjoyDisplayMetricsUtil;-><init>(Landroid/content/Context;)V

    .line 5864
    invoke-virtual {v0}, Lcom/tapjoy/TapjoyDisplayMetricsUtil;->getScreenDensityDPI()I

    move-result v3

    sput v3, Lcom/tapjoy/TapjoyConnectCore;->A:I

    .line 5865
    invoke-virtual {v0}, Lcom/tapjoy/TapjoyDisplayMetricsUtil;->getScreenDensityScale()F

    move-result v3

    sput v3, Lcom/tapjoy/TapjoyConnectCore;->B:F

    .line 5866
    invoke-virtual {v0}, Lcom/tapjoy/TapjoyDisplayMetricsUtil;->getScreenLayoutSize()I

    move-result v0

    sput v0, Lcom/tapjoy/TapjoyConnectCore;->C:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lcom/tapjoy/TapjoyIntegrationException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lcom/tapjoy/TapjoyException; {:try_start_5 .. :try_end_5} :catch_3

    .line 5883
    :cond_4
    :goto_1
    :try_start_6
    const-string v0, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->e(Ljava/lang/String;)Z
    :try_end_6
    .catch Lcom/tapjoy/TapjoyIntegrationException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lcom/tapjoy/TapjoyException; {:try_start_6 .. :try_end_6} :catch_3

    move-result v0

    if-eqz v0, :cond_11

    .line 5887
    :try_start_7
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->g:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 5889
    if-eqz v0, :cond_5

    .line 5891
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 5893
    if-eqz v0, :cond_5

    .line 5895
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 5897
    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->q:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 5900
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->q:Ljava/lang/String;

    const-string v3, ":"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->q:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catch Lcom/tapjoy/TapjoyIntegrationException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lcom/tapjoy/TapjoyException; {:try_start_7 .. :try_end_7} :catch_3

    .line 5921
    :cond_5
    :goto_2
    :try_start_8
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->g:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 5922
    if-eqz v0, :cond_9

    .line 5924
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/tapjoy/TapjoyConnectCore;->G:Ljava/lang/String;

    .line 5925
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/tapjoy/TapjoyConnectCore;->H:Ljava/lang/String;

    .line 5930
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v3

    .line 5931
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x5

    if-eq v4, v5, :cond_6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_7

    .line 5933
    :cond_6
    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/tapjoy/TapjoyConnectCore;->I:Ljava/lang/String;

    .line 5934
    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/tapjoy/TapjoyConnectCore;->J:Ljava/lang/String;

    .line 5938
    :cond_7
    const-string v3, "android.permission.READ_PHONE_STATE"

    invoke-static {v3}, Lcom/tapjoy/TapjoyConnectCore;->e(Ljava/lang/String;)Z
    :try_end_8
    .catch Lcom/tapjoy/TapjoyIntegrationException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Lcom/tapjoy/TapjoyException; {:try_start_8 .. :try_end_8} :catch_3

    move-result v3

    if-eqz v3, :cond_19

    .line 5943
    :try_start_9
    const-string v3, "TJC_OPTION_DEBUG_DEVICE_ID"

    invoke-static {v3}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_12

    const-string v3, "TJC_OPTION_DEBUG_DEVICE_ID"

    invoke-static {v3}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_12

    .line 5944
    const-string v0, "TJC_OPTION_DEBUG_DEVICE_ID"

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->p:Ljava/lang/String;

    .line 5948
    :goto_3
    const-string v0, "TapjoyConnect"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "deviceID: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->p:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5953
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->p:Ljava/lang/String;

    if-nez v0, :cond_13

    .line 5955
    const-string v0, "TapjoyConnect"

    new-instance v3, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v4, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->SDK_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    const-string v5, "Device ID is NULL"

    invoke-direct {v3, v4, v5}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {v0, v3}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    move v0, v2

    .line 5971
    :goto_4
    const-string v3, "TapjoyConnect"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ANDROID SDK VERSION: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5975
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x9

    if-lt v3, v4, :cond_9

    .line 5977
    const-string v3, "TapjoyConnect"

    const-string v4, "TRYING TO GET SERIAL OF 2.3+ DEVICE..."

    invoke-static {v3, v4}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5979
    invoke-virtual {p0}, Lcom/tapjoy/TapjoyConnectCore;->getSerial()Ljava/lang/String;

    move-result-object v3

    .line 5982
    if-nez v0, :cond_8

    .line 5984
    sput-object v3, Lcom/tapjoy/TapjoyConnectCore;->p:Ljava/lang/String;

    .line 5988
    :cond_8
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->p:Ljava/lang/String;

    if-nez v0, :cond_16

    .line 5990
    const-string v0, "TapjoyConnect"

    new-instance v3, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v4, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->SDK_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    const-string v5, "Device serial number is NULL"

    invoke-direct {v3, v4, v5}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {v0, v3}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5
    .catch Lcom/tapjoy/TapjoyIntegrationException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Lcom/tapjoy/TapjoyException; {:try_start_9 .. :try_end_9} :catch_3

    .line 6026
    :cond_9
    :goto_5
    :try_start_a
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->g:Landroid/content/Context;

    const-string v3, "tjcPrefrences"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 6027
    const-string v3, "tapjoyInstallId"

    const-string v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 6029
    sput-object v3, Lcom/tapjoy/TapjoyConnectCore;->r:Ljava/lang/String;

    if-eqz v3, :cond_a

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->r:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I
    :try_end_a
    .catch Lcom/tapjoy/TapjoyIntegrationException; {:try_start_a .. :try_end_a} :catch_1
    .catch Lcom/tapjoy/TapjoyException; {:try_start_a .. :try_end_a} :catch_3

    move-result v3

    if-nez v3, :cond_b

    .line 6034
    :cond_a
    :try_start_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tapjoy/TapjoyUtil;->SHA256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/tapjoy/TapjoyConnectCore;->r:Ljava/lang/String;

    .line 6036
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 6037
    const-string v3, "tapjoyInstallId"

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->r:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 6038
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6
    .catch Lcom/tapjoy/TapjoyIntegrationException; {:try_start_b .. :try_end_b} :catch_1
    .catch Lcom/tapjoy/TapjoyException; {:try_start_b .. :try_end_b} :catch_3

    .line 6056
    :cond_b
    :goto_6
    :try_start_c
    const-string v0, "android.hardware.location"

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v3}, Lcom/tapjoy/TapjoyConnectCore;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/tapjoy/TapjoyConnectCore;->E:Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7
    .catch Lcom/tapjoy/TapjoyIntegrationException; {:try_start_c .. :try_end_c} :catch_1
    .catch Lcom/tapjoy/TapjoyException; {:try_start_c .. :try_end_c} :catch_3

    .line 6064
    :goto_7
    :try_start_d
    const-string v0, "TJC_OPTION_STORE_NAME"

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    const-string v0, "TJC_OPTION_STORE_NAME"

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_c

    .line 6066
    const-string v0, "TJC_OPTION_STORE_NAME"

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->M:Ljava/lang/String;

    .line 6069
    new-instance v0, Ljava/util/ArrayList;

    sget-object v3, Lcom/tapjoy/TapjoyConnectFlag;->STORE_ARRAY:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6072
    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->M:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 6074
    const-string v0, "TapjoyConnect"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Warning -- undefined STORE_NAME: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->M:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Lcom/tapjoy/TapjoyIntegrationException; {:try_start_d .. :try_end_d} :catch_1
    .catch Lcom/tapjoy/TapjoyException; {:try_start_d .. :try_end_d} :catch_3

    .line 6081
    :cond_c
    :try_start_e
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->M:Ljava/lang/String;

    .line 6912
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6915
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_1a

    .line 6918
    const-string v0, "market://details"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 6919
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->af:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 6922
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1d

    move v0, v1

    .line 6081
    :goto_8
    sput-boolean v0, Lcom/tapjoy/TapjoyConnectCore;->T:Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_8
    .catch Lcom/tapjoy/TapjoyIntegrationException; {:try_start_e .. :try_end_e} :catch_1
    .catch Lcom/tapjoy/TapjoyException; {:try_start_e .. :try_end_e} :catch_3

    .line 4707
    :goto_9
    :try_start_f
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->i()V

    .line 4710
    const-string v0, "TJC_OPTION_DISABLE_PERSISTENT_IDS"

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    const-string v0, "TJC_OPTION_DISABLE_PERSISTENT_IDS"

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_d

    .line 4711
    const-string v0, "TJC_OPTION_DISABLE_PERSISTENT_IDS"

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->f:Ljava/lang/String;

    .line 4715
    :cond_d
    const-string v0, "TJC_OPTION_DISABLE_ADVERTISING_ID_CHECK"

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    const-string v0, "TJC_OPTION_DISABLE_ADVERTISING_ID_CHECK"

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_e

    .line 4716
    const-string v0, "TJC_OPTION_DISABLE_ADVERTISING_ID_CHECK"

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->e:Ljava/lang/String;

    .line 4720
    :cond_e
    const-string v0, "TJC_OPTION_USER_ID"

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    const-string v0, "TJC_OPTION_USER_ID"

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_f

    .line 4721
    const-string v0, "TapjoyConnect"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Setting userID to: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "TJC_OPTION_USER_ID"

    invoke-static {v2}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4722
    const-string v0, "TJC_OPTION_USER_ID"

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyConnectCore;->setUserID(Ljava/lang/String;Lcom/tapjoy/TJSetUserIDListener;)V

    .line 4725
    :cond_f
    const-string v0, "TJC_OPTION_SERVICE_URL"

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4726
    invoke-static {v0}, Lcom/tapjoy/TapjoyUtil;->getRedirectDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->R:Ljava/lang/String;

    .line 4728
    const-string v1, "TapjoyConnect"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "deviceID: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->p:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v0, "TJC_OPTION_DEBUG_DEVICE_ID"

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    const-string v0, "TJC_OPTION_DEBUG_DEVICE_ID"

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1c

    const-string v0, " *debug_device_id*"

    :goto_a
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4730
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->ah:Ljava/util/Hashtable;

    if-eqz v0, :cond_10

    .line 4731
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->j()V

    .line 292
    :cond_10
    invoke-virtual {p0}, Lcom/tapjoy/TapjoyConnectCore;->callConnect()V

    .line 294
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/TapjoyConnectCore;->ad:Z

    .line 309
    :goto_b
    return-void

    .line 5822
    :catch_0
    move-exception v0

    .line 5824
    new-instance v1, Lcom/tapjoy/TapjoyException;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/tapjoy/TapjoyException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_f
    .catch Lcom/tapjoy/TapjoyIntegrationException; {:try_start_f .. :try_end_f} :catch_1
    .catch Lcom/tapjoy/TapjoyException; {:try_start_f .. :try_end_f} :catch_3

    .line 297
    :catch_1
    move-exception v0

    .line 299
    const-string v1, "TapjoyConnect"

    new-instance v2, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v3, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->INTEGRATION_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyIntegrationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    .line 300
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->f()V

    .line 301
    sget-object v0, Lcom/tapjoy/internal/et;->b:Lcom/tapjoy/internal/et$a;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/et$a;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_b

    .line 5871
    :catch_2
    move-exception v0

    .line 5873
    :try_start_10
    const-string v3, "TapjoyConnect"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error getting screen density/dimensions/layout: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catch Lcom/tapjoy/TapjoyIntegrationException; {:try_start_10 .. :try_end_10} :catch_1
    .catch Lcom/tapjoy/TapjoyException; {:try_start_10 .. :try_end_10} :catch_3

    goto/16 :goto_1

    .line 303
    :catch_3
    move-exception v0

    .line 305
    const-string v1, "TapjoyConnect"

    new-instance v2, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v3, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->SDK_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    .line 306
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->f()V

    .line 307
    sget-object v0, Lcom/tapjoy/internal/et;->b:Lcom/tapjoy/internal/et$a;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/et$a;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_b

    .line 5905
    :catch_4
    move-exception v0

    .line 5907
    :try_start_11
    const-string v3, "TapjoyConnect"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error getting device mac address: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 5912
    :cond_11
    const-string v0, "TapjoyConnect"

    const-string v3, "*** ignore macAddress"

    invoke-static {v0, v3}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catch Lcom/tapjoy/TapjoyIntegrationException; {:try_start_11 .. :try_end_11} :catch_1
    .catch Lcom/tapjoy/TapjoyException; {:try_start_11 .. :try_end_11} :catch_3

    goto/16 :goto_2

    .line 5946
    :cond_12
    :try_start_12
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->p:Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_5
    .catch Lcom/tapjoy/TapjoyIntegrationException; {:try_start_12 .. :try_end_12} :catch_1
    .catch Lcom/tapjoy/TapjoyException; {:try_start_12 .. :try_end_12} :catch_3

    goto/16 :goto_3

    .line 6007
    :catch_5
    move-exception v0

    .line 6009
    :try_start_13
    const-string v3, "TapjoyConnect"

    new-instance v4, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v5, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->SDK_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Cannot get deviceID -- "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v5, v0}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {v3, v4}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    .line 6010
    const/4 v0, 0x0

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->p:Ljava/lang/String;
    :try_end_13
    .catch Lcom/tapjoy/TapjoyIntegrationException; {:try_start_13 .. :try_end_13} :catch_1
    .catch Lcom/tapjoy/TapjoyException; {:try_start_13 .. :try_end_13} :catch_3

    goto/16 :goto_5

    .line 5959
    :cond_13
    :try_start_14
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->p:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->p:Ljava/lang/String;

    const-string v3, "000000000000000"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->p:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 5961
    :cond_14
    const-string v0, "TapjoyConnect"

    new-instance v3, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v4, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->SDK_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    const-string v5, "Device ID is empty or an emulator"

    invoke-direct {v3, v4, v5}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {v0, v3}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    move v0, v2

    goto/16 :goto_4

    .line 5967
    :cond_15
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->p:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->p:Ljava/lang/String;

    move v0, v1

    .line 5968
    goto/16 :goto_4

    .line 5994
    :cond_16
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->p:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_17

    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->p:Ljava/lang/String;

    const-string v3, "000000000000000"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->p:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->p:Ljava/lang/String;

    const-string v3, "unknown"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 5996
    :cond_17
    const-string v0, "TapjoyConnect"

    new-instance v3, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v4, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->SDK_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    const-string v5, "Device serial number is empty or an emulator"

    invoke-direct {v3, v4, v5}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {v0, v3}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    goto/16 :goto_5

    .line 6002
    :cond_18
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->p:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->p:Ljava/lang/String;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_5
    .catch Lcom/tapjoy/TapjoyIntegrationException; {:try_start_14 .. :try_end_14} :catch_1
    .catch Lcom/tapjoy/TapjoyException; {:try_start_14 .. :try_end_14} :catch_3

    goto/16 :goto_5

    .line 6015
    :cond_19
    :try_start_15
    const-string v0, "TapjoyConnect"

    const-string v3, "*** ignore deviceID"

    invoke-static {v0, v3}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 6040
    :catch_6
    move-exception v0

    .line 6042
    const-string v3, "TapjoyConnect"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error generating install id: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 6058
    :catch_7
    move-exception v0

    .line 6060
    const-string v3, "TapjoyConnect"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error trying to detect capabilities on devicee: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catch Lcom/tapjoy/TapjoyIntegrationException; {:try_start_15 .. :try_end_15} :catch_1
    .catch Lcom/tapjoy/TapjoyException; {:try_start_15 .. :try_end_15} :catch_3

    goto/16 :goto_7

    .line 6925
    :cond_1a
    :try_start_16
    const-string v1, "gfan"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 6928
    const-string v0, "com.mappn.gfan"

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->d(Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_8

    .line 6930
    :cond_1b
    const-string v1, "skt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 6933
    const-string v0, "com.skt.skaf.TSCINSTALL"

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->d(Ljava/lang/String;)Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_8
    .catch Lcom/tapjoy/TapjoyIntegrationException; {:try_start_16 .. :try_end_16} :catch_1
    .catch Lcom/tapjoy/TapjoyException; {:try_start_16 .. :try_end_16} :catch_3

    move-result v0

    goto/16 :goto_8

    .line 6083
    :catch_8
    move-exception v0

    .line 6085
    :try_start_17
    const-string v1, "TapjoyConnect"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error trying to detect store intent on devicee: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 4728
    :cond_1c
    const-string v0, ""
    :try_end_17
    .catch Lcom/tapjoy/TapjoyIntegrationException; {:try_start_17 .. :try_end_17} :catch_1
    .catch Lcom/tapjoy/TapjoyException; {:try_start_17 .. :try_end_17} :catch_3

    goto/16 :goto_a

    :catch_9
    move-exception v0

    goto/16 :goto_0

    :cond_1d
    move v0, v2

    goto/16 :goto_8
.end method

.method static synthetic a(Lcom/tapjoy/TapjoyConnectCore;J)J
    .locals 1

    .prologue
    .line 68
    iput-wide p1, p0, Lcom/tapjoy/TapjoyConnectCore;->Z:J

    return-wide p1
.end method

.method static synthetic a(Lcom/tapjoy/TapjoyConnectCore;)Lcom/tapjoy/TapjoyGpsHelper;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/tapjoy/TapjoyConnectCore;->ag:Lcom/tapjoy/TapjoyGpsHelper;

    return-object v0
.end method

.method private static a(J)Ljava/lang/String;
    .locals 8

    .prologue
    .line 2027
    const-string v0, ""

    .line 2033
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->w:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->N:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tapjoy/TapjoyUtil;->SHA256(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2040
    :goto_0
    return-object v0

    .line 2035
    :catch_0
    move-exception v1

    .line 2037
    const-string v2, "TapjoyConnect"

    new-instance v3, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v4, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->SDK_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error in computing verifier value -- "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    goto :goto_0
.end method

.method private static a(JLjava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 2077
    const-string v0, ""

    .line 2083
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->w:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->N:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tapjoy/TapjoyUtil;->SHA256(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2090
    :goto_0
    return-object v0

    .line 2085
    :catch_0
    move-exception v1

    .line 2087
    const-string v2, "TapjoyConnect"

    new-instance v3, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v4, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->SDK_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error in computing packageNamesVerifier -- "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    goto :goto_0
.end method

.method private static declared-synchronized a(Ljava/util/List;)V
    .locals 6

    .prologue
    .line 1586
    const-class v1, Lcom/tapjoy/TapjoyConnectCore;

    monitor-enter v1

    :try_start_0
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->ai:Ljava/lang/String;

    .line 1588
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->af:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 1589
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 1592
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 1599
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {p0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1601
    const-string v3, "TapjoyConnect"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "MATCH: installed packageName: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1604
    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->ai:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 1605
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->ai:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/tapjoy/TapjoyConnectCore;->ai:Ljava/lang/String;

    .line 1607
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->ai:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->ai:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1586
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1611
    :cond_2
    monitor-exit v1

    return-void
.end method

.method private static a(Ljava/util/Properties;)V
    .locals 3

    .prologue
    .line 1173
    invoke-virtual {p0}, Ljava/util/Properties;->keys()Ljava/util/Enumeration;

    move-result-object v2

    .line 1175
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1179
    :try_start_0
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1180
    invoke-virtual {p0, v0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1181
    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyConnectCore;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1184
    :catch_0
    move-exception v0

    const-string v0, "TapjoyConnect"

    const-string v1, "Error parsing configuration properties in tapjoy_config.txt"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1187
    :cond_0
    return-void
.end method

.method static synthetic a(Z)V
    .locals 4

    .prologue
    .line 68
    .line 15159
    if-eqz p0, :cond_1

    .line 15160
    const-string v0, "TapjoyConnect"

    const-string v1, "Set userID is successful"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 15161
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->l:Lcom/tapjoy/TJSetUserIDListener;

    if-eqz v0, :cond_0

    .line 15162
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->l:Lcom/tapjoy/TJSetUserIDListener;

    invoke-interface {v0}, Lcom/tapjoy/TJSetUserIDListener;->onSetUserIDSuccess()V

    :cond_0
    :goto_0
    return-void

    .line 15165
    :cond_1
    const-string v0, "Failed to set userID"

    .line 15166
    const-string v1, "TapjoyConnect"

    new-instance v2, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v3, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->SDK_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    invoke-direct {v2, v3, v0}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    .line 15167
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->l:Lcom/tapjoy/TJSetUserIDListener;

    if-eqz v1, :cond_0

    .line 15168
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->l:Lcom/tapjoy/TJSetUserIDListener;

    invoke-interface {v1, v0}, Lcom/tapjoy/TJSetUserIDListener;->onSetUserIDFailure(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a()Z
    .locals 1

    .prologue
    .line 68
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->o()Z

    move-result v0

    return v0
.end method

.method static synthetic a(Ljava/lang/String;)Z
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 68
    .line 14529
    invoke-static {p0}, Lcom/tapjoy/TapjoyUtil;->buildDocument(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v2

    .line 14531
    if-eqz v2, :cond_3

    .line 14533
    const-string v0, "PackageNames"

    invoke-interface {v2, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v3

    .line 14536
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 14539
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    move v0, v1

    .line 14546
    :goto_0
    const/16 v5, 0x2c

    invoke-virtual {v3, v5, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 14549
    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    .line 14552
    const-string v5, "TapjoyConnect"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "parse: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14553
    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 14566
    invoke-static {v4}, Lcom/tapjoy/TapjoyConnectCore;->a(Ljava/util/List;)V

    .line 14569
    :cond_0
    const-string v0, "Success"

    invoke-interface {v2, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v0

    .line 14572
    if-eqz v0, :cond_1

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 14578
    :cond_1
    :goto_1
    return v1

    .line 14560
    :cond_2
    const-string v6, "TapjoyConnect"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "parse: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14561
    invoke-virtual {v3, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 14562
    add-int/lit8 v0, v5, 0x1

    goto :goto_0

    .line 14582
    :cond_3
    const/4 v1, 0x1

    .line 68
    goto :goto_1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1872
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->af:Landroid/content/pm/PackageManager;

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;

    move-result-object v2

    .line 1875
    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 1876
    iget-object v4, v4, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1885
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->af:Landroid/content/pm/PackageManager;

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->g:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 1888
    const/4 v0, 0x1

    .line 1899
    :cond_0
    return v0

    .line 1875
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Z)Z
    .locals 16

    .prologue
    .line 1453
    const/4 v3, 0x0

    .line 1455
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/tapjoy/internal/bs;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bs;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .line 1456
    :try_start_1
    invoke-virtual {v10}, Lcom/tapjoy/internal/bs;->d()Ljava/util/Map;

    move-result-object v12

    .line 1458
    const-string v2, "app_group_id"

    invoke-interface {v12, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/tapjoy/internal/ct;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1459
    const-string v2, "store"

    invoke-interface {v12, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/tapjoy/internal/ct;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1460
    const-string v2, "analytics_api_key"

    invoke-interface {v12, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/tapjoy/internal/ct;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1461
    const-string v2, "managed_device_id"

    invoke-interface {v12, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/tapjoy/internal/ct;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1462
    const-string v2, "package_names"

    invoke-interface {v12, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/tapjoy/internal/ct;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1463
    const-string v2, "cache_max_age"

    invoke-interface {v12, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 1465
    new-instance v2, Lcom/tapjoy/internal/eq;

    invoke-direct {v2, v4}, Lcom/tapjoy/internal/eq;-><init>(Ljava/lang/String;)V

    .line 10149
    iget-object v5, v2, Lcom/tapjoy/internal/eq;->a:Lcom/tapjoy/internal/eq$a;

    .line 1466
    sget-object v6, Lcom/tapjoy/internal/eq$a;->RPC_ANALYTICS:Lcom/tapjoy/internal/eq$a;

    if-eq v5, v6, :cond_0

    .line 1467
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Invalid analytics_api_key"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1508
    :catch_0
    move-exception v2

    move-object v3, v10

    .line 1509
    :goto_0
    :try_start_2
    const-string v4, "TapjoyConnect"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/tapjoy/TapjoyLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 1513
    invoke-static {v3}, Lcom/tapjoy/internal/dc;->a(Ljava/io/Closeable;)V

    .line 1515
    :goto_1
    const/4 v2, 0x0

    :goto_2
    return v2

    .line 11141
    :cond_0
    :try_start_3
    iget-object v5, v2, Lcom/tapjoy/internal/eq;->b:Ljava/lang/String;

    .line 11157
    const/16 v6, 0xd

    const-string v7, "-8000-8000-"

    const/4 v8, 0x0

    const/16 v11, 0xb

    invoke-virtual {v5, v6, v7, v8, v11}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 11158
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v7, 0x0

    const/16 v8, 0x8

    .line 11159
    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const/16 v7, 0x18

    const/16 v8, 0x1e

    .line 11160
    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const/16 v7, 0x9

    const/16 v8, 0xd

    .line 11161
    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const/16 v7, 0x1e

    .line 11162
    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 11163
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    .line 12145
    iget-object v8, v2, Lcom/tapjoy/internal/eq;->c:Ljava/lang/String;

    .line 1471
    if-nez v3, :cond_a

    move-object v11, v7

    .line 1475
    :goto_3
    invoke-static {}, Lcom/tapjoy/internal/fz;->a()Lcom/tapjoy/internal/fz;

    move-result-object v2

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->g:Landroid/content/Context;

    const-string v5, "11.10.1"

    const-string v6, "https://rpc.tapjoy.com/"

    invoke-virtual/range {v2 .. v8}, Lcom/tapjoy/internal/fz;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1481
    sput-object v11, Lcom/tapjoy/TapjoyConnectCore;->U:Ljava/lang/String;

    .line 1482
    sput-object v13, Lcom/tapjoy/TapjoyConnectCore;->V:Ljava/lang/String;

    .line 1483
    sput-object v4, Lcom/tapjoy/TapjoyConnectCore;->W:Ljava/lang/String;

    .line 1484
    sput-object v14, Lcom/tapjoy/TapjoyConnectCore;->X:Ljava/lang/String;

    .line 1486
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1487
    if-eqz v15, :cond_3

    .line 1488
    const-string v2, ","

    invoke-virtual {v15, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v5, :cond_3

    aget-object v6, v4, v2

    .line 1489
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 1490
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 1491
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1488
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 11165
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The given UUID did not come from 5Rocks."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1510
    :catch_1
    move-exception v2

    .line 1511
    :goto_5
    :try_start_4
    const-string v3, "TapjoyConnect"

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/tapjoy/TapjoyLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1513
    invoke-static {v10}, Lcom/tapjoy/internal/dc;->a(Ljava/io/Closeable;)V

    goto/16 :goto_1

    .line 1495
    :cond_3
    :try_start_5
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1496
    invoke-static {v3}, Lcom/tapjoy/TapjoyConnectCore;->a(Ljava/util/List;)V

    .line 1499
    :cond_4
    invoke-virtual {v10}, Lcom/tapjoy/internal/bs;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1500
    const/4 v4, 0x0

    .line 1502
    if-nez p1, :cond_5

    .line 12609
    const-wide/16 v6, 0x0

    .line 12611
    :try_start_6
    instance-of v2, v9, Ljava/lang/String;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v2, :cond_6

    .line 12613
    :try_start_7
    move-object v0, v9

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-result-wide v2

    .line 12626
    :goto_6
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-gtz v5, :cond_8

    .line 12627
    :try_start_8
    invoke-static {}, Lcom/tapjoy/TapjoyAppSettings;->getInstance()Lcom/tapjoy/TapjoyAppSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tapjoy/TapjoyAppSettings;->removeConnectResult()V

    .line 1505
    :goto_7
    invoke-static {}, Lcom/tapjoy/internal/ez;->a()Lcom/tapjoy/internal/ez;

    move-result-object v5

    const-string v2, "configurations"

    invoke-interface {v12, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 13114
    instance-of v2, v3, Ljava/util/Map;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v2, :cond_9

    .line 13116
    :try_start_9
    iget-object v6, v5, Lcom/tapjoy/internal/ez;->a:Lcom/tapjoy/internal/ex;

    move-object v0, v3

    check-cast v0, Ljava/util/Map;

    move-object v2, v0

    invoke-virtual {v6, v2}, Lcom/tapjoy/internal/ex;->a(Ljava/util/Map;)V

    .line 13119
    invoke-static {v3}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 13120
    invoke-virtual {v5}, Lcom/tapjoy/internal/ez;->c()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v5, "configurations"

    .line 13121
    invoke-interface {v3, v5, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 1513
    :cond_5
    :goto_8
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/tapjoy/internal/dc;->a(Ljava/io/Closeable;)V

    const/4 v2, 0x1

    goto/16 :goto_2

    .line 12616
    :catch_2
    move-exception v2

    move-wide v2, v6

    goto :goto_6

    .line 12618
    :cond_6
    :try_start_a
    instance-of v2, v9, Ljava/lang/Number;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    if-eqz v2, :cond_7

    .line 12620
    :try_start_b
    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->longValue()J
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    move-result-wide v2

    goto :goto_6

    :catch_3
    move-exception v2

    :cond_7
    move-wide v2, v6

    goto :goto_6

    .line 12630
    :cond_8
    :try_start_c
    invoke-static {}, Lcom/tapjoy/TapjoyAppSettings;->getInstance()Lcom/tapjoy/TapjoyAppSettings;

    move-result-object v5

    .line 12632
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->s()Ljava/lang/String;

    move-result-object v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v2, v8

    .line 12633
    invoke-static {}, Lcom/tapjoy/internal/y;->b()J

    move-result-wide v8

    add-long/2addr v2, v8

    .line 12630
    move-object/from16 v0, p0

    invoke-virtual {v5, v0, v6, v2, v3}, Lcom/tapjoy/TapjoyAppSettings;->saveConnectResultAndParams(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_7

    .line 1508
    :catch_4
    move-exception v2

    move-object v3, v4

    goto/16 :goto_0

    .line 13125
    :cond_9
    if-nez v3, :cond_5

    .line 13126
    iget-object v2, v5, Lcom/tapjoy/internal/ez;->a:Lcom/tapjoy/internal/ex;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/tapjoy/internal/ex;->a(Ljava/util/Map;)V

    .line 13128
    invoke-virtual {v5}, Lcom/tapjoy/internal/ez;->c()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "configurations"

    .line 13129
    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto :goto_8

    .line 1510
    :catch_5
    move-exception v2

    move-object v10, v4

    goto/16 :goto_5

    .line 1513
    :catchall_0
    move-exception v2

    move-object v10, v3

    :goto_9
    invoke-static {v10}, Lcom/tapjoy/internal/dc;->a(Ljava/io/Closeable;)V

    throw v2

    :catchall_1
    move-exception v2

    goto :goto_9

    :catchall_2
    move-exception v2

    move-object v10, v4

    goto :goto_9

    :catchall_3
    move-exception v2

    move-object v10, v3

    goto :goto_9

    .line 1510
    :catch_6
    move-exception v2

    move-object v10, v3

    goto/16 :goto_5

    .line 1508
    :catch_7
    move-exception v2

    goto/16 :goto_0

    .line 13124
    :catch_8
    move-exception v2

    goto :goto_8

    :cond_a
    move-object v11, v3

    goto/16 :goto_3
.end method

.method static synthetic b(Lcom/tapjoy/TapjoyConnectCore;)J
    .locals 2

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/tapjoy/TapjoyConnectCore;->Z:J

    return-wide v0
.end method

.method static synthetic b()Landroid/content/Context;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->g:Landroid/content/Context;

    return-object v0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 2235
    const-string v0, "TJC_OPTION_SERVICE_URL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TJC_OPTION_PLACEMENT_SERVICE_URL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2237
    :cond_1
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->ah:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2238
    return-void
.end method

.method static synthetic b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 68
    invoke-static {p0}, Lcom/tapjoy/TapjoyConnectCore;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->Y:Ljava/lang/String;

    return-object v0
.end method

.method private static c(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1623
    .line 1625
    :try_start_0
    invoke-static {p0}, Lcom/tapjoy/internal/bs;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bs;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1626
    :try_start_1
    invoke-virtual {v1}, Lcom/tapjoy/internal/bs;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1627
    invoke-virtual {v1}, Lcom/tapjoy/internal/bs;->s()V

    .line 1628
    const-string v0, "TapjoyConnect"

    const-string v3, "Successfully sent completed Pay-Per-Action to Tapjoy server."

    invoke-static {v0, v3}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1629
    invoke-virtual {v1}, Lcom/tapjoy/internal/bs;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1640
    invoke-static {v2}, Lcom/tapjoy/internal/dc;->a(Ljava/io/Closeable;)V

    const/4 v0, 0x1

    .line 1643
    :goto_0
    return v0

    .line 1633
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Lcom/tapjoy/internal/bs;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1640
    invoke-static {v2}, Lcom/tapjoy/internal/dc;->a(Ljava/io/Closeable;)V

    .line 1642
    :goto_1
    const-string v0, "TapjoyConnect"

    new-instance v1, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v2, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->SDK_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    const-string v3, "Completed Pay-Per-Action call failed."

    invoke-direct {v1, v2, v3}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    .line 1643
    const/4 v0, 0x0

    goto :goto_0

    .line 1635
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 1636
    :goto_2
    :try_start_3
    const-string v2, "TapjoyConnect"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tapjoy/TapjoyLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1640
    invoke-static {v1}, Lcom/tapjoy/internal/dc;->a(Ljava/io/Closeable;)V

    goto :goto_1

    .line 1637
    :catch_1
    move-exception v0

    move-object v1, v2

    .line 1638
    :goto_3
    :try_start_4
    const-string v2, "TapjoyConnect"

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tapjoy/TapjoyLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1640
    invoke-static {v1}, Lcom/tapjoy/internal/dc;->a(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_4
    invoke-static {v1}, Lcom/tapjoy/internal/dc;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4

    .line 1637
    :catch_2
    move-exception v0

    goto :goto_3

    .line 1635
    :catch_3
    move-exception v0

    goto :goto_2
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->D:Ljava/lang/String;

    return-object v0
.end method

.method private static d(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1847
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->af:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 1850
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 1852
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1854
    const/4 v0, 0x1

    .line 1860
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method static synthetic e()Lcom/tapjoy/TapjoyURLConnection;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->j:Lcom/tapjoy/TapjoyURLConnection;

    return-object v0
.end method

.method private static e(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 2247
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->af:Landroid/content/pm/PackageManager;

    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->g:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 2249
    if-eqz v0, :cond_0

    .line 2250
    const/4 v0, 0x0

    .line 2252
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static f()V
    .locals 7

    .prologue
    .line 312
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->O:Ljava/lang/String;

    invoke-static {v0}, Lcom/tapjoy/internal/ct;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 314
    invoke-static {}, Lcom/tapjoy/internal/fz;->a()Lcom/tapjoy/internal/fz;

    move-result-object v0

    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->g:Landroid/content/Context;

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->h:Ljava/lang/String;

    const-string v3, "11.10.1"

    const-string v4, "https://rpc.tapjoy.com/"

    sget-object v5, Lcom/tapjoy/TapjoyConnectCore;->O:Ljava/lang/String;

    sget-object v6, Lcom/tapjoy/TapjoyConnectCore;->N:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/tapjoy/internal/fz;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    :cond_0
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->k:Lcom/tapjoy/TJConnectListener;

    if-eqz v0, :cond_1

    .line 321
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->k:Lcom/tapjoy/TJConnectListener;

    invoke-interface {v0}, Lcom/tapjoy/TJConnectListener;->onConnectFailure()V

    .line 323
    :cond_1
    return-void
.end method

.method private static g()Ljava/util/Map;
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 421
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7435
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 7477
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 7479
    const-string v3, "plugin"

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->P:Ljava/lang/String;

    invoke-static {v2, v3, v4, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7480
    const-string v3, "sdk_type"

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->Q:Ljava/lang/String;

    invoke-static {v2, v3, v4, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7482
    const-string v3, "app_id"

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->w:Ljava/lang/String;

    invoke-static {v2, v3, v4, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7483
    const-string v3, "library_version"

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->y:Ljava/lang/String;

    invoke-static {v2, v3, v4, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7484
    const-string v3, "library_revision"

    const-string v4, "350ac9c"

    invoke-static {v2, v3, v4, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7485
    const-string v3, "bridge_version"

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->z:Ljava/lang/String;

    invoke-static {v2, v3, v4, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7488
    const-string v3, "app_version"

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->x:Ljava/lang/String;

    invoke-static {v2, v3, v4, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7437
    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 7499
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 7501
    const-string v3, "device_name"

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->s:Ljava/lang/String;

    invoke-static {v2, v3, v4, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7502
    const-string v3, "platform"

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->F:Ljava/lang/String;

    invoke-static {v2, v3, v4, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7503
    const-string v3, "os_version"

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->v:Ljava/lang/String;

    invoke-static {v2, v3, v4, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7504
    const-string v3, "device_manufacturer"

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->t:Ljava/lang/String;

    invoke-static {v2, v3, v4, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7505
    const-string v3, "device_type"

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->u:Ljava/lang/String;

    invoke-static {v2, v3, v4, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7506
    const-string v3, "screen_layout_size"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Lcom/tapjoy/TapjoyConnectCore;->C:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7507
    const-string v3, "device_location"

    sget-boolean v4, Lcom/tapjoy/TapjoyConnectCore;->E:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7508
    const-string v3, "store_name"

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->M:Ljava/lang/String;

    invoke-static {v2, v3, v4, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7509
    const-string v3, "store_view"

    sget-boolean v4, Lcom/tapjoy/TapjoyConnectCore;->T:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7510
    const-string v3, "carrier_name"

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->G:Ljava/lang/String;

    invoke-static {v2, v3, v4, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7511
    const-string v3, "carrier_country_code"

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->H:Ljava/lang/String;

    invoke-static {v2, v3, v4, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7512
    const-string v3, "mobile_network_code"

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->J:Ljava/lang/String;

    invoke-static {v2, v3, v4, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7513
    const-string v3, "mobile_country_code"

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->I:Ljava/lang/String;

    invoke-static {v2, v3, v4, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7516
    const-string v3, "country_code"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7517
    const-string v3, "language_code"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7520
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getConnectionType()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/tapjoy/TapjoyConnectCore;->K:Ljava/lang/String;

    .line 7521
    const-string v3, "connection_type"

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->K:Ljava/lang/String;

    invoke-static {v2, v3, v4, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7524
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getConnectionSubType()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/tapjoy/TapjoyConnectCore;->L:Ljava/lang/String;

    .line 7525
    const-string v3, "connection_subtype"

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->L:Ljava/lang/String;

    invoke-static {v2, v3, v4, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7528
    const-string v3, "screen_density"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Lcom/tapjoy/TapjoyConnectCore;->A:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7438
    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 7539
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 7542
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->n()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7543
    const-string v3, "advertising_id"

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->c:Ljava/lang/String;

    invoke-static {v2, v3, v4, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7544
    const-string v3, "ad_tracking_enabled"

    sget-boolean v4, Lcom/tapjoy/TapjoyConnectCore;->d:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7548
    :cond_0
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->o()Z

    move-result v3

    if-nez v3, :cond_1

    .line 7550
    const-string v3, "android_id"

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->n:Ljava/lang/String;

    invoke-static {v2, v3, v4, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7551
    const-string v3, "udid"

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->p:Ljava/lang/String;

    invoke-static {v2, v3, v4, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7552
    const-string v3, "mac_address"

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->q:Ljava/lang/String;

    invoke-static {v2, v3, v4, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7555
    :cond_1
    const-string v3, "install_id"

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->r:Ljava/lang/String;

    invoke-static {v2, v3, v4, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7557
    const-string v3, "publisher_user_id"

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->D:Ljava/lang/String;

    invoke-static {v2, v3, v4, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7560
    const-string v3, "ad_id_check_disabled"

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->e:Ljava/lang/String;

    invoke-static {v2, v3, v4, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7563
    const-string v3, "persistent_ids_disabled"

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->f:Ljava/lang/String;

    invoke-static {v2, v3, v4, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7565
    sget v3, Lcom/tapjoy/TapjoyConnectCore;->a:I

    if-eqz v3, :cond_2

    .line 7566
    const-string v3, "packaged_gps_version"

    sget v4, Lcom/tapjoy/TapjoyConnectCore;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7569
    :cond_2
    sget v3, Lcom/tapjoy/TapjoyConnectCore;->b:I

    if-eqz v3, :cond_3

    .line 7570
    const-string v3, "device_gps_version"

    sget v4, Lcom/tapjoy/TapjoyConnectCore;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7574
    :cond_3
    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->o:Ljava/lang/String;

    if-eqz v3, :cond_4

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->o:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Lcom/tapjoy/TapjoyConnectCore;->ac:J

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x1b7740

    cmp-long v3, v4, v6

    if-lez v3, :cond_7

    .line 7575
    :cond_4
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->p()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/tapjoy/TapjoyConnectCore;->o:Ljava/lang/String;

    .line 7580
    :goto_0
    const-string v3, "session_id"

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->o:Ljava/lang/String;

    invoke-static {v2, v3, v4, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7439
    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 7591
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 7592
    const-string v3, "app_group_id"

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->U:Ljava/lang/String;

    invoke-static {v2, v3, v4, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7593
    const-string v3, "store"

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->V:Ljava/lang/String;

    invoke-static {v2, v3, v4, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7594
    const-string v3, "analytics_api_key"

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->W:Ljava/lang/String;

    invoke-static {v2, v3, v4, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7595
    const-string v3, "managed_device_id"

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->X:Ljava/lang/String;

    invoke-static {v2, v3, v4, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7440
    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 7443
    invoke-static {}, Lcom/tapjoy/TapjoyCache;->getInstance()Lcom/tapjoy/TapjoyCache;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/tapjoy/TapjoyCache;->getInstance()Lcom/tapjoy/TapjoyCache;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tapjoy/TapjoyCache;->getCachedOfferIDs()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/tapjoy/TapjoyCache;->getInstance()Lcom/tapjoy/TapjoyCache;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tapjoy/TapjoyCache;->getCachedOfferIDs()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    .line 7444
    const-string v2, "cached_ids"

    invoke-static {}, Lcom/tapjoy/TapjoyCache;->getInstance()Lcom/tapjoy/TapjoyCache;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tapjoy/TapjoyCache;->getCachedOfferIDs()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7447
    :cond_5
    const-string v2, "display_multiplier"

    sget v3, Lcom/tapjoy/TapjoyConnectCore;->S:F

    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 423
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 7605
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 7607
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->i()V

    .line 7621
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 7623
    const-string v3, "analytics_id"

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->ak:Ljava/lang/String;

    invoke-static {v2, v3, v4, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7624
    const-string v3, "pkg_id"

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->al:Ljava/lang/String;

    invoke-static {v2, v3, v4, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7625
    const-string v3, "pkg_sign"

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->am:Ljava/lang/String;

    invoke-static {v2, v3, v4, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7626
    const-string v3, "display_d"

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->aM:Ljava/lang/Integer;

    invoke-static {v2, v3, v4}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Number;)V

    .line 7627
    const-string v3, "display_w"

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->aN:Ljava/lang/Integer;

    invoke-static {v2, v3, v4}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Number;)V

    .line 7628
    const-string v3, "display_h"

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->aO:Ljava/lang/Integer;

    invoke-static {v2, v3, v4}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Number;)V

    .line 7629
    const-string v3, "country_sim"

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->aP:Ljava/lang/String;

    invoke-static {v2, v3, v4, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7630
    const-string v3, "timezone"

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->aQ:Ljava/lang/String;

    invoke-static {v2, v3, v4, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7608
    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 7636
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 7638
    const-string v3, "pkg_ver"

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->an:Ljava/lang/String;

    invoke-static {v2, v3, v4, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7639
    const-string v3, "pkg_rev"

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->ao:Ljava/lang/Integer;

    invoke-static {v2, v3, v4}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Number;)V

    .line 7640
    const-string v3, "pkg_data_ver"

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->ap:Ljava/lang/String;

    invoke-static {v2, v3, v4, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7641
    const-string v3, "installer"

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->aq:Ljava/lang/String;

    invoke-static {v2, v3, v4, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7645
    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->M:Ljava/lang/String;

    invoke-static {v3}, Lcom/tapjoy/internal/ct;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 7646
    const-string v3, "store_name"

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->aR:Ljava/lang/String;

    invoke-static {v2, v3, v4, v8}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7609
    :cond_6
    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 7610
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->h()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 424
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 426
    return-object v0

    .line 7578
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sput-wide v4, Lcom/tapjoy/TapjoyConnectCore;->ac:J

    goto/16 :goto_0
.end method

.method public static getAndroidID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2519
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->n:Ljava/lang/String;

    return-object v0
.end method

.method public static getAppID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1669
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->w:Ljava/lang/String;

    return-object v0
.end method

.method public static getAwardCurrencyVerifier(JILjava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "time"    # J
    .param p2, "amount"    # I
    .param p3, "guid"    # Ljava/lang/String;

    .prologue
    .line 2052
    const-string v0, ""

    .line 2058
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->w:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->N:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tapjoy/TapjoyUtil;->SHA256(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2065
    :goto_0
    return-object v0

    .line 2060
    :catch_0
    move-exception v1

    .line 2062
    const-string v2, "TapjoyConnect"

    new-instance v3, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v4, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->SDK_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error in computing awardCurrencyVerifier -- "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    goto :goto_0
.end method

.method public static getCarrierName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1737
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->G:Ljava/lang/String;

    return-object v0
.end method

.method public static getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 2497
    const-string v0, ""

    .line 2499
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->ah:Ljava/util/Hashtable;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->ah:Ljava/util/Hashtable;

    invoke-virtual {v1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2501
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->ah:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2504
    :cond_0
    return-object v0
.end method

.method public static getConnectURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1714
    const-string v0, "https://connect.tapjoy.com/"

    return-object v0
.end method

.method public static getConnectionSubType()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1815
    const-string v1, ""

    .line 1821
    :try_start_0
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->g:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1824
    if-eqz v0, :cond_0

    .line 1826
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1827
    :try_start_1
    const-string v1, "TapjoyConnect"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "connection_sub_type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1835
    :goto_0
    return-object v0

    .line 1830
    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    .line 1832
    :goto_1
    const-string v2, "TapjoyConnect"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getConnectionSubType error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1830
    :catch_1
    move-exception v1

    goto :goto_1

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public static getConnectionType()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1774
    const-string v1, ""

    .line 1780
    :try_start_0
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->g:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1783
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1785
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 1792
    const-string v1, "mobile"

    .line 1796
    :goto_0
    const-string v2, "TapjoyConnect"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "connectivity: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1797
    const-string v0, "TapjoyConnect"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "connection_type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move-object v0, v1

    .line 1805
    :goto_1
    return-object v0

    .line 1789
    :sswitch_0
    const-string v1, "wifi"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1800
    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    .line 1802
    const-string v2, "TapjoyConnect"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getConnectionType error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1785
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x6 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 1977
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->g:Landroid/content/Context;

    return-object v0
.end method

.method public static getDeviceID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1678
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->p:Ljava/lang/String;

    return-object v0
.end method

.method public static getDeviceScreenDensityScale()F
    .locals 1

    .prologue
    .line 2560
    sget v0, Lcom/tapjoy/TapjoyConnectCore;->B:F

    return v0
.end method

.method public static getGenericURLParams()Ljava/util/Map;
    .locals 4

    .prologue
    .line 409
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->g()Ljava/util/Map;

    move-result-object v0

    .line 410
    const-string v1, "app_id"

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->w:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 411
    return-object v0
.end method

.method public static getHostURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1696
    const-string v0, "TJC_OPTION_SERVICE_URL"

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/tapjoy/TapjoyConnectCore;
    .locals 1

    .prologue
    .line 209
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->i:Lcom/tapjoy/TapjoyConnectCore;

    return-object v0
.end method

.method public static getMacAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2550
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->q:Ljava/lang/String;

    return-object v0
.end method

.method public static getPlacementURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1705
    const-string v0, "TJC_OPTION_PLACEMENT_SERVICE_URL"

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRedirectDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1719
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->R:Ljava/lang/String;

    return-object v0
.end method

.method public static getSecretKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2514
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->N:Ljava/lang/String;

    return-object v0
.end method

.method public static getSha1MacAddress()Ljava/lang/String;
    .locals 5

    .prologue
    .line 2529
    const/4 v0, 0x0

    .line 2533
    :try_start_0
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->q:Ljava/lang/String;

    invoke-static {v1}, Lcom/tapjoy/TapjoyUtil;->SHA1(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2540
    :goto_0
    return-object v0

    .line 2535
    :catch_0
    move-exception v1

    .line 2537
    const-string v2, "TapjoyConnect"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error generating sha1 of macAddress: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getSupportURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "currencyId"    # Ljava/lang/String;

    .prologue
    .line 2571
    if-nez p0, :cond_0

    .line 2572
    sget-object p0, Lcom/tapjoy/TapjoyConnectCore;->w:Ljava/lang/String;

    .line 2575
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getHostURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "support_requests/new?currency_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&app_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&udid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->X:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&language_code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2578
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTimeStampAndVerifierParams()Ljava/util/Map;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 461
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 462
    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyConnectCore;->a(J)Ljava/lang/String;

    move-result-object v2

    .line 464
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 465
    const-string v4, "timestamp"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v0, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 466
    const-string v0, "verifier"

    invoke-static {v3, v0, v2, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 468
    return-object v3
.end method

.method public static getURLParams()Ljava/util/Map;
    .locals 2

    .prologue
    .line 396
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getGenericURLParams()Ljava/util/Map;

    move-result-object v0

    .line 397
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getTimeStampAndVerifierParams()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 398
    return-object v0
.end method

.method public static getUserID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1687
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->D:Ljava/lang/String;

    return-object v0
.end method

.method private static h()Ljava/util/Map;
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 653
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 655
    const-string v0, "installed"

    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->ar:Ljava/lang/Long;

    invoke-static {v3, v0, v1}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Number;)V

    .line 656
    const-string v0, "referrer"

    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->as:Ljava/lang/String;

    invoke-static {v3, v0, v1, v6}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 659
    const-string v0, "user_level"

    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->at:Ljava/lang/Integer;

    invoke-static {v3, v0, v1}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Number;)V

    .line 660
    const-string v0, "friend_count"

    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->au:Ljava/lang/Integer;

    invoke-static {v3, v0, v1}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Number;)V

    .line 661
    const-string v0, "uv1"

    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->av:Ljava/lang/String;

    invoke-static {v3, v0, v1, v6}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 662
    const-string v0, "uv2"

    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->aw:Ljava/lang/String;

    invoke-static {v3, v0, v1, v6}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 663
    const-string v0, "uv3"

    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->ax:Ljava/lang/String;

    invoke-static {v3, v0, v1, v6}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 664
    const-string v0, "uv4"

    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->ay:Ljava/lang/String;

    invoke-static {v3, v0, v1, v6}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 665
    const-string v0, "uv5"

    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->az:Ljava/lang/String;

    invoke-static {v3, v0, v1, v6}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 666
    const/4 v0, 0x0

    .line 667
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->aA:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 668
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v2, "user_tags["

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "]"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v0, v6}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    move v1, v2

    .line 669
    goto :goto_0

    .line 670
    :cond_0
    const-string v0, "fq7"

    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->aB:Ljava/lang/Integer;

    invoke-static {v3, v0, v1}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Number;)V

    .line 671
    const-string v0, "fq30"

    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->aC:Ljava/lang/Integer;

    invoke-static {v3, v0, v1}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Number;)V

    .line 674
    const-string v0, "session_total_count"

    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->aD:Ljava/lang/Integer;

    invoke-static {v3, v0, v1}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Number;)V

    .line 675
    const-string v0, "session_total_length"

    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->aE:Ljava/lang/Long;

    invoke-static {v3, v0, v1}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Number;)V

    .line 676
    const-string v0, "session_last_at"

    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->aF:Ljava/lang/Long;

    invoke-static {v3, v0, v1}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Number;)V

    .line 677
    const-string v0, "session_last_length"

    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->aG:Ljava/lang/Long;

    invoke-static {v3, v0, v1}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Number;)V

    .line 680
    const-string v0, "purchase_currency"

    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->aH:Ljava/lang/String;

    invoke-static {v3, v0, v1, v6}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 681
    const-string v0, "purchase_total_count"

    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->aI:Ljava/lang/Integer;

    invoke-static {v3, v0, v1}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Number;)V

    .line 682
    const-string v0, "purchase_total_price"

    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->aJ:Ljava/lang/Double;

    invoke-static {v3, v0, v1}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Number;)V

    .line 683
    const-string v0, "purchase_last_price"

    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->aK:Ljava/lang/Double;

    invoke-static {v3, v0, v1}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Number;)V

    .line 684
    const-string v0, "purchase_last_at"

    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->aL:Ljava/lang/Long;

    invoke-static {v3, v0, v1}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Number;)V

    .line 686
    return-object v3
.end method

.method private static i()V
    .locals 3

    .prologue
    .line 738
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tapjoy/internal/fz;->a(Landroid/content/Context;)Lcom/tapjoy/internal/fz;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/fz;->a(Z)Lcom/tapjoy/internal/ee;

    move-result-object v0

    .line 740
    iget-object v1, v0, Lcom/tapjoy/internal/ee;->d:Lcom/tapjoy/internal/ed;

    .line 741
    iget-object v2, v1, Lcom/tapjoy/internal/ed;->h:Ljava/lang/String;

    sput-object v2, Lcom/tapjoy/TapjoyConnectCore;->ak:Ljava/lang/String;

    .line 742
    iget-object v2, v1, Lcom/tapjoy/internal/ed;->r:Ljava/lang/String;

    sput-object v2, Lcom/tapjoy/TapjoyConnectCore;->al:Ljava/lang/String;

    .line 743
    iget-object v2, v1, Lcom/tapjoy/internal/ed;->s:Ljava/lang/String;

    sput-object v2, Lcom/tapjoy/TapjoyConnectCore;->am:Ljava/lang/String;

    .line 744
    iget-object v2, v1, Lcom/tapjoy/internal/ed;->m:Ljava/lang/Integer;

    sput-object v2, Lcom/tapjoy/TapjoyConnectCore;->aM:Ljava/lang/Integer;

    .line 745
    iget-object v2, v1, Lcom/tapjoy/internal/ed;->n:Ljava/lang/Integer;

    sput-object v2, Lcom/tapjoy/TapjoyConnectCore;->aN:Ljava/lang/Integer;

    .line 746
    iget-object v2, v1, Lcom/tapjoy/internal/ed;->o:Ljava/lang/Integer;

    sput-object v2, Lcom/tapjoy/TapjoyConnectCore;->aO:Ljava/lang/Integer;

    .line 747
    iget-object v2, v1, Lcom/tapjoy/internal/ed;->u:Ljava/lang/String;

    sput-object v2, Lcom/tapjoy/TapjoyConnectCore;->aP:Ljava/lang/String;

    .line 748
    iget-object v1, v1, Lcom/tapjoy/internal/ed;->q:Ljava/lang/String;

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->aQ:Ljava/lang/String;

    .line 750
    iget-object v1, v0, Lcom/tapjoy/internal/ee;->e:Lcom/tapjoy/internal/dx;

    .line 751
    iget-object v2, v1, Lcom/tapjoy/internal/dx;->e:Ljava/lang/String;

    sput-object v2, Lcom/tapjoy/TapjoyConnectCore;->an:Ljava/lang/String;

    .line 752
    iget-object v2, v1, Lcom/tapjoy/internal/dx;->f:Ljava/lang/Integer;

    sput-object v2, Lcom/tapjoy/TapjoyConnectCore;->ao:Ljava/lang/Integer;

    .line 753
    iget-object v2, v1, Lcom/tapjoy/internal/dx;->g:Ljava/lang/String;

    sput-object v2, Lcom/tapjoy/TapjoyConnectCore;->ap:Ljava/lang/String;

    .line 754
    iget-object v2, v1, Lcom/tapjoy/internal/dx;->h:Ljava/lang/String;

    sput-object v2, Lcom/tapjoy/TapjoyConnectCore;->aq:Ljava/lang/String;

    .line 755
    iget-object v1, v1, Lcom/tapjoy/internal/dx;->i:Ljava/lang/String;

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->aR:Ljava/lang/String;

    .line 757
    iget-object v0, v0, Lcom/tapjoy/internal/ee;->f:Lcom/tapjoy/internal/ek;

    .line 758
    iget-object v1, v0, Lcom/tapjoy/internal/ek;->s:Ljava/lang/Long;

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->ar:Ljava/lang/Long;

    .line 759
    iget-object v1, v0, Lcom/tapjoy/internal/ek;->t:Ljava/lang/String;

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->as:Ljava/lang/String;

    .line 760
    iget-object v1, v0, Lcom/tapjoy/internal/ek;->J:Ljava/lang/Integer;

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->at:Ljava/lang/Integer;

    .line 761
    iget-object v1, v0, Lcom/tapjoy/internal/ek;->K:Ljava/lang/Integer;

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->au:Ljava/lang/Integer;

    .line 762
    iget-object v1, v0, Lcom/tapjoy/internal/ek;->L:Ljava/lang/String;

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->av:Ljava/lang/String;

    .line 763
    iget-object v1, v0, Lcom/tapjoy/internal/ek;->M:Ljava/lang/String;

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->aw:Ljava/lang/String;

    .line 764
    iget-object v1, v0, Lcom/tapjoy/internal/ek;->N:Ljava/lang/String;

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->ax:Ljava/lang/String;

    .line 765
    iget-object v1, v0, Lcom/tapjoy/internal/ek;->O:Ljava/lang/String;

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->ay:Ljava/lang/String;

    .line 766
    iget-object v1, v0, Lcom/tapjoy/internal/ek;->P:Ljava/lang/String;

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->az:Ljava/lang/String;

    .line 767
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, v0, Lcom/tapjoy/internal/ek;->Q:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->aA:Ljava/util/Set;

    .line 768
    iget-object v1, v0, Lcom/tapjoy/internal/ek;->u:Ljava/lang/Integer;

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->aB:Ljava/lang/Integer;

    .line 769
    iget-object v1, v0, Lcom/tapjoy/internal/ek;->v:Ljava/lang/Integer;

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->aC:Ljava/lang/Integer;

    .line 770
    iget-object v1, v0, Lcom/tapjoy/internal/ek;->x:Ljava/lang/Integer;

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->aD:Ljava/lang/Integer;

    .line 771
    iget-object v1, v0, Lcom/tapjoy/internal/ek;->y:Ljava/lang/Long;

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->aE:Ljava/lang/Long;

    .line 772
    iget-object v1, v0, Lcom/tapjoy/internal/ek;->z:Ljava/lang/Long;

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->aF:Ljava/lang/Long;

    .line 773
    iget-object v1, v0, Lcom/tapjoy/internal/ek;->A:Ljava/lang/Long;

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->aG:Ljava/lang/Long;

    .line 774
    iget-object v1, v0, Lcom/tapjoy/internal/ek;->B:Ljava/lang/String;

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->aH:Ljava/lang/String;

    .line 775
    iget-object v1, v0, Lcom/tapjoy/internal/ek;->C:Ljava/lang/Integer;

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->aI:Ljava/lang/Integer;

    .line 776
    iget-object v1, v0, Lcom/tapjoy/internal/ek;->D:Ljava/lang/Double;

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->aJ:Ljava/lang/Double;

    .line 777
    iget-object v1, v0, Lcom/tapjoy/internal/ek;->F:Ljava/lang/Double;

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->aK:Ljava/lang/Double;

    .line 778
    iget-object v0, v0, Lcom/tapjoy/internal/ek;->E:Ljava/lang/Long;

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->aL:Ljava/lang/Long;

    .line 779
    return-void
.end method

.method public static isConnected()Z
    .locals 1

    .prologue
    .line 2587
    sget-boolean v0, Lcom/tapjoy/TapjoyConnectCore;->ae:Z

    return v0
.end method

.method public static isFullScreenViewOpen()Z
    .locals 2

    .prologue
    .line 2201
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->aj:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2202
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2205
    :pswitch_0
    const/4 v0, 0x1

    .line 2210
    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 2202
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isUnitTestMode()Z
    .locals 2

    .prologue
    .line 2591
    const-string v0, "unit_test_mode"

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isViewOpen()Z
    .locals 3

    .prologue
    .line 2196
    const-string v0, "TapjoyConnect"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isViewOpen: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->aj:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2197
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->aj:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static j()V
    .locals 5

    .prologue
    .line 787
    const-string v0, "TapjoyConnect"

    const-string v1, "Connect Flags:"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    const-string v0, "TapjoyConnect"

    const-string v1, "--------------------"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->ah:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 791
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 793
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 795
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 796
    const-string v3, "TapjoyConnect"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v1, "key: "

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", value: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 799
    :cond_0
    const-string v0, "TapjoyConnect"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "hostURL: ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "TJC_OPTION_SERVICE_URL"

    invoke-static {v2}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    const-string v0, "TapjoyConnect"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "redirectDomain: ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->R:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    const-string v0, "TapjoyConnect"

    const-string v1, "--------------------"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    return-void
.end method

.method private static k()V
    .locals 9

    .prologue
    .line 1118
    :try_start_0
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->af:Landroid/content/pm/PackageManager;

    if-eqz v0, :cond_2

    .line 1120
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->af:Landroid/content/pm/PackageManager;

    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->g:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 1123
    if-eqz v1, :cond_3

    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    .line 1125
    sget-object v2, Lcom/tapjoy/TapjoyConnectFlag;->FLAG_ARRAY:[Ljava/lang/String;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 1127
    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "tapjoy."

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1128
    if-eqz v5, :cond_0

    .line 1130
    const-string v6, "TapjoyConnect"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Found manifest flag: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1131
    invoke-static {v4, v5}, Lcom/tapjoy/TapjoyConnectCore;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1125
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1134
    :cond_1
    const-string v0, "TapjoyConnect"

    const-string v1, "Metadata successfully loaded"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1146
    :cond_2
    :goto_1
    return-void

    .line 1138
    :cond_3
    const-string v0, "TapjoyConnect"

    const-string v1, "No metadata present."

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1142
    :catch_0
    move-exception v0

    .line 1144
    const-string v1, "TapjoyConnect"

    new-instance v2, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v3, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->SDK_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error reading manifest meta-data -- "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    goto :goto_1
.end method

.method private l()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1197
    :try_start_0
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->af:Landroid/content/pm/PackageManager;

    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->g:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1199
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1200
    if-eqz v0, :cond_7

    .line 1202
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    .line 8367
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->m:Ljava/util/Vector;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8369
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->m:Ljava/util/Vector;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 8372
    :try_start_1
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->m:Ljava/util/Vector;

    invoke-virtual {v1, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 8374
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 8377
    iget v4, v0, Landroid/content/pm/ActivityInfo;->configChanges:I

    and-int/lit16 v4, v4, 0x80

    const/16 v5, 0x80

    if-eq v4, v5, :cond_1

    .line 8378
    const-string v4, "orientation"

    invoke-virtual {v1, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 8381
    :cond_1
    iget v4, v0, Landroid/content/pm/ActivityInfo;->configChanges:I

    and-int/lit8 v4, v4, 0x20

    const/16 v5, 0x20

    if-eq v4, v5, :cond_2

    .line 8382
    const-string v4, "keyboardHidden"

    invoke-virtual {v1, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 8384
    :cond_2
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v4

    if-eqz v4, :cond_4

    .line 8385
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    if-ne v0, v6, :cond_3

    .line 8386
    new-instance v2, Lcom/tapjoy/TapjoyIntegrationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " property is not specified in manifest configChanges for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->m:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/tapjoy/TapjoyIntegrationException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 8403
    :catch_0
    move-exception v0

    :try_start_2
    new-instance v1, Lcom/tapjoy/TapjoyIntegrationException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "[ClassNotFoundException] Could not find dependency class "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->m:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/tapjoy/TapjoyIntegrationException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1208
    :catch_1
    move-exception v0

    new-instance v0, Lcom/tapjoy/TapjoyIntegrationException;

    const-string v1, "NameNotFoundException: Could not find package."

    invoke-direct {v0, v1}, Lcom/tapjoy/TapjoyIntegrationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8388
    :cond_3
    :try_start_3
    new-instance v2, Lcom/tapjoy/TapjoyIntegrationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " properties are not specified in manifest configChanges for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->m:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/tapjoy/TapjoyIntegrationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 8392
    :cond_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xd

    if-lt v1, v4, :cond_5

    iget v1, v0, Landroid/content/pm/ActivityInfo;->configChanges:I

    and-int/lit16 v1, v1, 0x400

    const/16 v4, 0x400

    if-eq v1, v4, :cond_5

    .line 8393
    const-string v4, "TapjoyConnect"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v1, "WARNING -- screenSize property is not specified in manifest configChanges for "

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->m:Ljava/util/Vector;

    invoke-virtual {v1, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 8396
    :cond_5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v1, v4, :cond_6

    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v4, "com.tapjoy.TJAdUnitActivity"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-eq v0, v1, :cond_6

    .line 8397
    new-instance v1, Lcom/tapjoy/TapjoyIntegrationException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "\'hardwareAccelerated\' property not specified in manifest for "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->m:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/tapjoy/TapjoyIntegrationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 8399
    :cond_6
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->m:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 1211
    :cond_7
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->m:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-eqz v0, :cond_9

    .line 1213
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->m:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ne v0, v6, :cond_8

    .line 1214
    new-instance v0, Lcom/tapjoy/TapjoyIntegrationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Missing "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->m:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dependency class in manifest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->m:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tapjoy/TapjoyIntegrationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1216
    :cond_8
    new-instance v0, Lcom/tapjoy/TapjoyIntegrationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Missing "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->m:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dependency classes in manifest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->m:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tapjoy/TapjoyIntegrationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1220
    :cond_9
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->m()V

    .line 9288
    :try_start_4
    const-string v0, "com.tapjoy.TJAdUnitJSBridge"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v0

    .line 9298
    const/4 v1, 0x1

    :try_start_5
    new-array v1, v1, [Ljava/lang/Class;

    .line 9299
    const/4 v2, 0x0

    const-class v3, Ljava/lang/Boolean;

    aput-object v3, v1, v2

    .line 9300
    const-string v2, "closeRequested"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_3

    .line 9311
    const-string v0, "mraid.js"

    invoke-static {v0}, Lcom/tapjoy/TapjoyUtil;->getResource(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 9314
    if-nez v0, :cond_d

    .line 9315
    const-string v0, "js/mraid.js"

    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->g:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyUtil;->copyTextFromJarIntoString(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 9318
    :goto_1
    if-nez v1, :cond_c

    .line 9320
    :try_start_6
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v2, "mraid"

    const-string v3, "raw"

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->g:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 9321
    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->g:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 9322
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v2

    new-array v2, v2, [B

    .line 9323
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    .line 9324
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 9325
    :try_start_7
    const-string v1, "mraid.js"

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyUtil;->setResource(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 9331
    :goto_2
    if-nez v0, :cond_a

    .line 9332
    new-instance v0, Lcom/tapjoy/TapjoyIntegrationException;

    const-string v1, "ClassNotFoundException: mraid.js was not found."

    invoke-direct {v0, v1}, Lcom/tapjoy/TapjoyIntegrationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9292
    :catch_2
    move-exception v0

    new-instance v0, Lcom/tapjoy/TapjoyIntegrationException;

    const-string v1, "ClassNotFoundException: com.tapjoy.TJAdUnitJSBridge was not found."

    invoke-direct {v0, v1}, Lcom/tapjoy/TapjoyIntegrationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9305
    :catch_3
    move-exception v0

    new-instance v0, Lcom/tapjoy/TapjoyIntegrationException;

    const-string v1, "Try configuring Proguard or other code obfuscators to ignore com.tapjoy classes. Visit http://dev.tapjoy.comfor more information."

    invoke-direct {v0, v1}, Lcom/tapjoy/TapjoyIntegrationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1226
    :cond_a
    const-string v0, "TJC_OPTION_DISABLE_ADVERTISING_ID_CHECK"

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    const-string v0, "TJC_OPTION_DISABLE_ADVERTISING_ID_CHECK"

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1228
    const-string v0, "TapjoyConnect"

    const-string v1, "Skipping integration check for Google Play Services and Advertising ID. Do this only if you do not have access to Google Play Services."

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1235
    :goto_3
    return-void

    .line 1232
    :cond_b
    iget-object v0, p0, Lcom/tapjoy/TapjoyConnectCore;->ag:Lcom/tapjoy/TapjoyGpsHelper;

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyGpsHelper;->checkGooglePlayIntegration()V

    goto :goto_3

    :catch_4
    move-exception v0

    move-object v0, v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_2

    :cond_c
    move-object v0, v1

    goto :goto_2

    :cond_d
    move-object v1, v0

    goto :goto_1
.end method

.method private static m()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v0, 0x0

    .line 1243
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 1244
    sget-object v3, Lcom/tapjoy/TapjoyConstants;->dependencyPermissions:[Ljava/lang/String;

    array-length v4, v3

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v5, v3, v1

    .line 1246
    invoke-static {v5}, Lcom/tapjoy/TapjoyConnectCore;->e(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1248
    invoke-virtual {v2, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1244
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1252
    :cond_1
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v1

    if-eqz v1, :cond_3

    .line 1254
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    if-ne v0, v7, :cond_2

    .line 1255
    new-instance v0, Lcom/tapjoy/TapjoyIntegrationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Missing 1 permission in manifest: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tapjoy/TapjoyIntegrationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1257
    :cond_2
    new-instance v0, Lcom/tapjoy/TapjoyIntegrationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Missing "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " permissions in manifest: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tapjoy/TapjoyIntegrationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1261
    :cond_3
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 1262
    sget-object v2, Lcom/tapjoy/TapjoyConstants;->optionalPermissions:[Ljava/lang/String;

    array-length v3, v2

    :goto_1
    if-ge v0, v3, :cond_5

    aget-object v4, v2, v0

    .line 1264
    invoke-static {v4}, Lcom/tapjoy/TapjoyConnectCore;->e(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1266
    invoke-virtual {v1, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1262
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1270
    :cond_5
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    if-eqz v0, :cond_6

    .line 1272
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    if-ne v0, v7, :cond_7

    .line 1273
    const-string v0, "TapjoyConnect"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "WARNING -- "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " permission was not found in manifest. The exclusion of this permission could cause problems."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1277
    :cond_6
    :goto_2
    return-void

    .line 1275
    :cond_7
    const-string v0, "TapjoyConnect"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "WARNING -- "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " permissions were not found in manifest. The exclusion of these permissions could cause problems."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private static n()Z
    .locals 1

    .prologue
    .line 1337
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static o()Z
    .locals 2

    .prologue
    .line 1357
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TJC_OPTION_DISABLE_PERSISTENT_IDS"

    .line 1358
    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "TJC_OPTION_DISABLE_PERSISTENT_IDS"

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static p()Ljava/lang/String;
    .locals 7

    .prologue
    .line 1954
    const/4 v1, 0x0

    .line 1956
    const-string v0, "TapjoyConnect"

    const-string v2, "generating sessionID..."

    invoke-static {v0, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1960
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->w:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->p:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/TapjoyUtil;->SHA256(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1961
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/tapjoy/TapjoyConnectCore;->ac:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1968
    :goto_0
    return-object v0

    .line 1963
    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    .line 1965
    :goto_1
    const-string v2, "TapjoyConnect"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "unable to generate session id: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1963
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private static q()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1987
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->o()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1989
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->c:Ljava/lang/String;

    .line 2015
    :goto_0
    return-object v0

    .line 13347
    :cond_0
    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->p:Ljava/lang/String;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->p:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    move v2, v0

    .line 1993
    :goto_1
    if-eqz v2, :cond_2

    .line 1995
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->p:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move v2, v1

    .line 13347
    goto :goto_1

    .line 13352
    :cond_2
    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->q:Ljava/lang/String;

    if-eqz v2, :cond_3

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->q:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    move v2, v0

    .line 1998
    :goto_2
    if-eqz v2, :cond_4

    .line 2000
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->q:Ljava/lang/String;

    goto :goto_0

    :cond_3
    move v2, v1

    .line 13352
    goto :goto_2

    .line 2003
    :cond_4
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->n()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2005
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->c:Ljava/lang/String;

    goto :goto_0

    .line 14342
    :cond_5
    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->n:Ljava/lang/String;

    if-eqz v2, :cond_6

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->n:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6

    .line 2008
    :goto_3
    if-eqz v0, :cond_7

    .line 2010
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->n:Ljava/lang/String;

    goto :goto_0

    :cond_6
    move v0, v1

    .line 14342
    goto :goto_3

    .line 2014
    :cond_7
    const-string v0, "TapjoyConnect"

    const-string v1, "Error -- no valid device identifier"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2015
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private r()V
    .locals 4

    .prologue
    .line 2416
    const-string v0, "TapjoyConnect"

    const-string v1, "Initializing mediation params"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2419
    :try_start_0
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->ah:Ljava/util/Hashtable;

    const-string v1, "TJC_OPTION_MEDIATION_CONFIGS"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 2420
    if-eqz v0, :cond_0

    .line 2421
    const-string v1, "TapjoyConnect"

    const-string v2, "Initializing mediation partners with configs"

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2422
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/mediation/TJMediationNetwork;

    .line 2423
    new-instance v2, Lcom/tapjoy/TapjoyConnectCore$3;

    invoke-direct {v2, p0, v0}, Lcom/tapjoy/TapjoyConnectCore$3;-><init>(Lcom/tapjoy/TapjoyConnectCore;Lcom/tapjoy/mediation/TJMediationNetwork;)V

    .line 2432
    invoke-virtual {v2}, Lcom/tapjoy/TapjoyConnectCore$3;->run()V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2436
    :catch_0
    move-exception v0

    const-string v0, "TapjoyConnect"

    new-instance v1, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v2, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->INTEGRATION_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    const-string v3, "Invalid type! Make sure to pass in an ArrayList<TJMediationNetwork> type as your mediation configs."

    invoke-direct {v1, v2, v3}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    .line 2439
    :cond_0
    const-string v0, "TJC_OPTION_MEDIATION_TIMEOUT"

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2440
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2441
    invoke-static {}, Lcom/tapjoy/mediation/TJMediationSettings;->getInstance()Lcom/tapjoy/mediation/TJMediationSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tapjoy/mediation/TJMediationSettings;->setTimeout(Ljava/lang/String;)V

    .line 2442
    const-string v1, "TapjoyConnect"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Setting mediation timeout to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "s"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2444
    :cond_1
    return-void
.end method

.method public static requestTapjoyConnect(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "applicationContext"    # Landroid/content/Context;
    .param p1, "apiKey"    # Ljava/lang/String;

    .prologue
    .line 220
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/tapjoy/TapjoyConnectCore;->requestTapjoyConnect(Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;)V

    .line 221
    return-void
.end method

.method public static requestTapjoyConnect(Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 1
    .param p0, "applicationContext"    # Landroid/content/Context;
    .param p1, "apiKey"    # Ljava/lang/String;

    .prologue
    .line 232
    .local p2, "flags":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;*>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/tapjoy/TapjoyConnectCore;->requestTapjoyConnect(Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TJConnectListener;)V

    .line 233
    return-void
.end method

.method public static requestTapjoyConnect(Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TJConnectListener;)V
    .locals 3
    .param p0, "applicationContext"    # Landroid/content/Context;
    .param p1, "apiKey"    # Ljava/lang/String;
    .param p3, "tapjoyConnectListener"    # Lcom/tapjoy/TJConnectListener;

    .prologue
    .line 252
    .local p2, "flags":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;*>;"
    :try_start_0
    new-instance v0, Lcom/tapjoy/internal/eq;

    invoke-direct {v0, p1}, Lcom/tapjoy/internal/eq;-><init>(Ljava/lang/String;)V

    .line 3149
    iget-object v1, v0, Lcom/tapjoy/internal/eq;->a:Lcom/tapjoy/internal/eq$a;

    .line 253
    sget-object v2, Lcom/tapjoy/internal/eq$a;->SDK_ANDROID:Lcom/tapjoy/internal/eq$a;

    if-eq v1, v2, :cond_0

    .line 254
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The given API key was not for Android."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    :catch_0
    move-exception v0

    .line 257
    new-instance v1, Lcom/tapjoy/TapjoyIntegrationException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/tapjoy/TapjoyIntegrationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 260
    :cond_0
    sput-object p1, Lcom/tapjoy/TapjoyConnectCore;->h:Ljava/lang/String;

    .line 4141
    iget-object v1, v0, Lcom/tapjoy/internal/eq;->b:Ljava/lang/String;

    .line 261
    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->w:Ljava/lang/String;

    .line 4145
    iget-object v1, v0, Lcom/tapjoy/internal/eq;->c:Ljava/lang/String;

    .line 262
    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->N:Ljava/lang/String;

    .line 4153
    iget-object v0, v0, Lcom/tapjoy/internal/eq;->d:Ljava/lang/String;

    .line 263
    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->O:Ljava/lang/String;

    .line 264
    invoke-static {p0}, Lcom/tapjoy/internal/fz;->a(Landroid/content/Context;)Lcom/tapjoy/internal/fz;

    move-result-object v0

    .line 4187
    iput-object p1, v0, Lcom/tapjoy/internal/fz;->j:Ljava/lang/String;

    .line 266
    if-eqz p2, :cond_1

    .line 267
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->ah:Ljava/util/Hashtable;

    invoke-virtual {v0, p2}, Ljava/util/Hashtable;->putAll(Ljava/util/Map;)V

    .line 268
    invoke-static {}, Lcom/tapjoy/internal/ez;->b()Lcom/tapjoy/internal/ex;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/tapjoy/internal/ex;->a(Ljava/util/Hashtable;)V

    .line 271
    :cond_1
    sput-object p3, Lcom/tapjoy/TapjoyConnectCore;->k:Lcom/tapjoy/TJConnectListener;

    .line 272
    new-instance v0, Lcom/tapjoy/TapjoyConnectCore;

    invoke-direct {v0, p0}, Lcom/tapjoy/TapjoyConnectCore;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->i:Lcom/tapjoy/TapjoyConnectCore;

    .line 273
    return-void
.end method

.method private static s()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2596
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2598
    :try_start_0
    invoke-static {v0}, Lcom/tapjoy/TapjoyUtil;->SHA1(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2600
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static setPlugin(Ljava/lang/String;)V
    .locals 0
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 2109
    sput-object p0, Lcom/tapjoy/TapjoyConnectCore;->P:Ljava/lang/String;

    .line 2110
    return-void
.end method

.method public static setSDKType(Ljava/lang/String;)V
    .locals 0
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 2118
    sput-object p0, Lcom/tapjoy/TapjoyConnectCore;->Q:Ljava/lang/String;

    .line 2119
    return-void
.end method

.method public static setUserID(Ljava/lang/String;Lcom/tapjoy/TJSetUserIDListener;)V
    .locals 3
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "listener"    # Lcom/tapjoy/TJSetUserIDListener;

    .prologue
    .line 2128
    sput-object p0, Lcom/tapjoy/TapjoyConnectCore;->D:Ljava/lang/String;

    .line 2129
    sput-object p1, Lcom/tapjoy/TapjoyConnectCore;->l:Lcom/tapjoy/TJSetUserIDListener;

    .line 2131
    const-string v0, "TapjoyConnect"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "URL parameters: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getURLParams()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2134
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tapjoy/TapjoyConnectCore$2;

    invoke-direct {v1}, Lcom/tapjoy/TapjoyConnectCore$2;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2152
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2153
    return-void
.end method

.method public static setViewShowing(Z)V
    .locals 3
    .param p0, "showing"    # Z

    .prologue
    .line 2220
    if-eqz p0, :cond_0

    .line 2221
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->aj:Ljava/util/Map;

    const-string v1, ""

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2226
    :goto_0
    return-void

    .line 2224
    :cond_0
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->aj:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    goto :goto_0
.end method

.method public static viewDidClose(Ljava/lang/String;)V
    .locals 3
    .param p0, "contentViewId"    # Ljava/lang/String;

    .prologue
    .line 2178
    const-string v0, "TapjoyConnect"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "viewDidClose: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2179
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->aj:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2180
    sget-object v0, Lcom/tapjoy/internal/et;->e:Lcom/tapjoy/internal/et$a;

    invoke-virtual {v0}, Lcom/tapjoy/internal/et$a;->notifyObservers()V

    .line 2181
    return-void
.end method

.method public static viewWillOpen(Ljava/lang/String;I)V
    .locals 3
    .param p0, "contentViewId"    # Ljava/lang/String;
    .param p1, "viewType"    # I

    .prologue
    .line 2188
    const-string v0, "TapjoyConnect"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "viewWillOpen: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2189
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->aj:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2190
    return-void
.end method


# virtual methods
.method public actionComplete(Ljava/lang/String;)V
    .locals 4
    .param p1, "actionID"    # Ljava/lang/String;

    .prologue
    .line 2265
    const-string v0, "TapjoyConnect"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "actionComplete: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2268
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->g()Ljava/util/Map;

    move-result-object v0

    .line 2269
    const-string v1, "app_id"

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2270
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getTimeStampAndVerifierParams()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 2272
    const-string v1, "TapjoyConnect"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PPA URL parameters: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2274
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/tapjoy/TapjoyConnectCore$PPAThread;

    invoke-direct {v2, p0, v0}, Lcom/tapjoy/TapjoyConnectCore$PPAThread;-><init>(Lcom/tapjoy/TapjoyConnectCore;Ljava/util/Map;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 2275
    return-void
.end method

.method public appPause()V
    .locals 1

    .prologue
    .line 374
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/TapjoyConnectCore;->ab:Z

    .line 375
    return-void
.end method

.method public appResume()V
    .locals 1

    .prologue
    .line 383
    iget-boolean v0, p0, Lcom/tapjoy/TapjoyConnectCore;->ab:Z

    if-eqz v0, :cond_0

    .line 385
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->p()Ljava/lang/String;

    .line 386
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/TapjoyConnectCore;->ab:Z

    .line 388
    :cond_0
    return-void
.end method

.method public callConnect()V
    .locals 0

    .prologue
    .line 331
    invoke-virtual {p0}, Lcom/tapjoy/TapjoyConnectCore;->fetchAdvertisingID()V

    .line 332
    return-void
.end method

.method public completeConnectCall()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0xc8

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 2324
    const-string v0, "TapjoyConnect"

    const-string v2, "starting connect call..."

    invoke-static {v0, v2}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2326
    const-string v0, "https://connect.tapjoy.com/"

    .line 2329
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getHostURL()Ljava/lang/String;

    move-result-object v2

    const-string v4, "https://ws.tapjoyads.com/"

    if-eq v2, v4, :cond_0

    .line 2330
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getHostURL()Ljava/lang/String;

    move-result-object v0

    .line 2334
    :cond_0
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->isConnected()Z

    move-result v2

    if-nez v2, :cond_a

    .line 2335
    invoke-static {}, Lcom/tapjoy/TapjoyAppSettings;->getInstance()Lcom/tapjoy/TapjoyAppSettings;

    move-result-object v2

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->s()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/tapjoy/internal/y;->b()J

    move-result-wide v6

    invoke-virtual {v2, v4, v6, v7}, Lcom/tapjoy/TapjoyAppSettings;->getConnectResult(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    .line 2336
    if-eqz v2, :cond_a

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyConnectCore;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2337
    const-string v2, "TapjoyConnect"

    const-string v4, "Connect using stored connect result"

    invoke-static {v2, v4}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2338
    sput-boolean v3, Lcom/tapjoy/TapjoyConnectCore;->ae:Z

    .line 2341
    invoke-direct {p0}, Lcom/tapjoy/TapjoyConnectCore;->r()V

    .line 2343
    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->k:Lcom/tapjoy/TJConnectListener;

    if-eqz v2, :cond_1

    .line 2344
    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->k:Lcom/tapjoy/TJConnectListener;

    invoke-interface {v2}, Lcom/tapjoy/TJConnectListener;->onConnectSuccess()V

    .line 2346
    :cond_1
    sget-object v2, Lcom/tapjoy/internal/et;->a:Lcom/tapjoy/internal/et$a;

    invoke-virtual {v2}, Lcom/tapjoy/internal/et$a;->notifyObservers()V

    move v2, v3

    .line 2350
    :goto_0
    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->j:Lcom/tapjoy/TapjoyURLConnection;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "api/connect/v3.json?"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getURLParams()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v4, v0, v9, v9, v5}, Lcom/tapjoy/TapjoyURLConnection;->getResponseFromURL(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lcom/tapjoy/TapjoyHttpURLResponse;

    move-result-object v0

    .line 2353
    if-eqz v0, :cond_8

    iget v4, v0, Lcom/tapjoy/TapjoyHttpURLResponse;->statusCode:I

    if-ne v4, v8, :cond_8

    .line 2355
    iget-object v0, v0, Lcom/tapjoy/TapjoyHttpURLResponse;->response:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyConnectCore;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2356
    const-string v0, "TapjoyConnect"

    const-string v1, "Successfully connected to Tapjoy"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2357
    sput-boolean v3, Lcom/tapjoy/TapjoyConnectCore;->ae:Z

    .line 2360
    invoke-direct {p0}, Lcom/tapjoy/TapjoyConnectCore;->r()V

    .line 2363
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getGenericURLParams()Ljava/util/Map;

    move-result-object v0

    .line 2364
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2365
    const-string v5, "TapjoyConnect"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ": "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2368
    :cond_2
    if-nez v2, :cond_4

    .line 2369
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->k:Lcom/tapjoy/TJConnectListener;

    if-eqz v0, :cond_3

    .line 2370
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->k:Lcom/tapjoy/TJConnectListener;

    invoke-interface {v0}, Lcom/tapjoy/TJConnectListener;->onConnectSuccess()V

    .line 2372
    :cond_3
    sget-object v0, Lcom/tapjoy/internal/et;->a:Lcom/tapjoy/internal/et$a;

    invoke-virtual {v0}, Lcom/tapjoy/internal/et$a;->notifyObservers()V

    .line 2374
    :cond_4
    sget-object v0, Lcom/tapjoy/internal/et;->b:Lcom/tapjoy/internal/et$a;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/et$a;->notifyObservers(Ljava/lang/Object;)V

    .line 2384
    :goto_2
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->ai:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    .line 2386
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getGenericURLParams()Ljava/util/Map;

    move-result-object v0

    .line 2387
    const-string v1, "package_names"

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->ai:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2390
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    .line 2391
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->ai:Ljava/lang/String;

    invoke-static {v4, v5, v1}, Lcom/tapjoy/TapjoyConnectCore;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2392
    const-string v2, "timestamp"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v4, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2393
    const-string v2, "verifier"

    invoke-static {v0, v2, v1, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2395
    new-instance v1, Lcom/tapjoy/TapjoyURLConnection;

    invoke-direct {v1}, Lcom/tapjoy/TapjoyURLConnection;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getHostURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "apps_installed?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/tapjoy/TapjoyURLConnection;->getResponseFromURL(Ljava/lang/String;Ljava/util/Map;)Lcom/tapjoy/TapjoyHttpURLResponse;

    move-result-object v0

    .line 2398
    if-eqz v0, :cond_5

    iget v0, v0, Lcom/tapjoy/TapjoyHttpURLResponse;->statusCode:I

    if-ne v0, v8, :cond_5

    .line 2399
    const-string v0, "TapjoyConnect"

    const-string v1, "Successfully pinged sdkless api."

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2410
    :cond_5
    :goto_3
    return-void

    .line 2377
    :cond_6
    if-nez v2, :cond_7

    .line 2378
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->f()V

    .line 2380
    :cond_7
    sget-object v0, Lcom/tapjoy/internal/et;->b:Lcom/tapjoy/internal/et$a;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/et$a;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_2

    .line 2405
    :cond_8
    if-nez v2, :cond_9

    .line 2406
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->f()V

    .line 2408
    :cond_9
    sget-object v0, Lcom/tapjoy/internal/et;->b:Lcom/tapjoy/internal/et$a;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/et$a;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_3

    :cond_a
    move v2, v1

    goto/16 :goto_0
.end method

.method public enablePaidAppWithActionID(Ljava/lang/String;)V
    .locals 7
    .param p1, "paidAppPayPerActionID"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, 0x2710

    const/4 v6, 0x0

    .line 2288
    const-string v0, "TapjoyConnect"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "enablePaidAppWithActionID: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2290
    sput-object p1, Lcom/tapjoy/TapjoyConnectCore;->Y:Ljava/lang/String;

    .line 2292
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->g:Landroid/content/Context;

    const-string v1, "tjcPrefrences"

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2295
    const-string v1, "tapjoy_elapsed_time"

    const-wide/16 v4, 0x0

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tapjoy/TapjoyConnectCore;->Z:J

    .line 2297
    const-string v0, "TapjoyConnect"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "paidApp elapsed: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/tapjoy/TapjoyConnectCore;->Z:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2300
    iget-wide v0, p0, Lcom/tapjoy/TapjoyConnectCore;->Z:J

    const-wide/32 v4, 0xdbba0

    cmp-long v0, v0, v4

    if-ltz v0, :cond_1

    .line 2303
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->Y:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->Y:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 2305
    const-string v0, "TapjoyConnect"

    const-string v1, "Calling PPA actionComplete..."

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2307
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->Y:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tapjoy/TapjoyConnectCore;->actionComplete(Ljava/lang/String;)V

    .line 2317
    :cond_0
    :goto_0
    return-void

    .line 2312
    :cond_1
    iget-object v0, p0, Lcom/tapjoy/TapjoyConnectCore;->aa:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 2314
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/TapjoyConnectCore;->aa:Ljava/util/Timer;

    .line 2315
    iget-object v0, p0, Lcom/tapjoy/TapjoyConnectCore;->aa:Ljava/util/Timer;

    new-instance v1, Lcom/tapjoy/TapjoyConnectCore$a;

    invoke-direct {v1, p0, v6}, Lcom/tapjoy/TapjoyConnectCore$a;-><init>(Lcom/tapjoy/TapjoyConnectCore;B)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_0
.end method

.method public fetchAdvertisingID()V
    .locals 2

    .prologue
    .line 340
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tapjoy/TapjoyConnectCore$1;

    invoke-direct {v1, p0}, Lcom/tapjoy/TapjoyConnectCore$1;-><init>(Lcom/tapjoy/TapjoyConnectCore;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 366
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 367
    return-void
.end method

.method public getCurrencyMultiplier()F
    .locals 1

    .prologue
    .line 2486
    sget v0, Lcom/tapjoy/TapjoyConnectCore;->S:F

    return v0
.end method

.method public getSerial()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1746
    const/4 v1, 0x0

    .line 1750
    :try_start_0
    const-string v0, "android.os.Build"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1751
    const-string v2, "SERIAL"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1753
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1754
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1756
    :cond_0
    const-class v2, Landroid/os/Build;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1758
    :try_start_1
    const-string v1, "TapjoyConnect"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "serial: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1765
    :goto_0
    return-object v0

    .line 1760
    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    .line 1762
    :goto_1
    const-string v2, "TapjoyConnect"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1760
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 2100
    iget-boolean v0, p0, Lcom/tapjoy/TapjoyConnectCore;->ad:Z

    return v0
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1652
    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->i:Lcom/tapjoy/TapjoyConnectCore;

    .line 1653
    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->j:Lcom/tapjoy/TapjoyURLConnection;

    .line 1655
    const-string v0, "TapjoyConnect"

    const-string v1, "Releasing core static instance."

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1656
    return-void
.end method

.method public setCurrencyMultiplier(F)V
    .locals 3
    .param p1, "multiplier"    # F

    .prologue
    .line 2476
    const-string v0, "TapjoyConnect"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setVirtualCurrencyMultiplier: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2477
    sput p1, Lcom/tapjoy/TapjoyConnectCore;->S:F

    .line 2478
    return-void
.end method
