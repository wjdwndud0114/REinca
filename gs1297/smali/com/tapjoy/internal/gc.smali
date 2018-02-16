.class public final Lcom/tapjoy/internal/gc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field private static d:Lcom/tapjoy/internal/gc;


# instance fields
.field final b:Lcom/tapjoy/internal/ek$a;

.field final c:Lcom/tapjoy/internal/gj;

.field private final e:Lcom/tapjoy/internal/ed$a;

.field private final f:Lcom/tapjoy/internal/dx$a;

.field private final g:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/gc;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/tapjoy/internal/gj;)V
    .locals 13

    .prologue
    const/4 v12, -0x1

    const-wide/16 v10, 0x0

    const/4 v7, 0x2

    const/4 v1, 0x0

    const-wide/16 v8, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-static {}, Lcom/tapjoy/internal/gn;->a()V

    .line 82
    new-instance v0, Lcom/tapjoy/internal/ed$a;

    invoke-direct {v0}, Lcom/tapjoy/internal/ed$a;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/gc;->e:Lcom/tapjoy/internal/ed$a;

    .line 83
    new-instance v0, Lcom/tapjoy/internal/dx$a;

    invoke-direct {v0}, Lcom/tapjoy/internal/dx$a;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/gc;->f:Lcom/tapjoy/internal/dx$a;

    .line 84
    new-instance v0, Lcom/tapjoy/internal/ek$a;

    invoke-direct {v0}, Lcom/tapjoy/internal/ek$a;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/gc;->b:Lcom/tapjoy/internal/ek$a;

    .line 86
    iget-object v0, p0, Lcom/tapjoy/internal/gc;->e:Lcom/tapjoy/internal/ed$a;

    const-string v2, "11.10.1/Android"

    iput-object v2, v0, Lcom/tapjoy/internal/ed$a;->p:Ljava/lang/String;

    .line 87
    iget-object v0, p0, Lcom/tapjoy/internal/gc;->e:Lcom/tapjoy/internal/ed$a;

    const-string v2, "Android"

    iput-object v2, v0, Lcom/tapjoy/internal/ed$a;->g:Ljava/lang/String;

    .line 88
    iget-object v0, p0, Lcom/tapjoy/internal/gc;->e:Lcom/tapjoy/internal/ed$a;

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v2, v0, Lcom/tapjoy/internal/ed$a;->h:Ljava/lang/String;

    .line 89
    iget-object v0, p0, Lcom/tapjoy/internal/gc;->e:Lcom/tapjoy/internal/ed$a;

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v2, v0, Lcom/tapjoy/internal/ed$a;->e:Ljava/lang/String;

    .line 90
    iget-object v0, p0, Lcom/tapjoy/internal/gc;->e:Lcom/tapjoy/internal/ed$a;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v2, v0, Lcom/tapjoy/internal/ed$a;->f:Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lcom/tapjoy/internal/gc;->e:Lcom/tapjoy/internal/ed$a;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tapjoy/internal/ed$a;->l:Ljava/lang/String;

    .line 92
    iget-object v0, p0, Lcom/tapjoy/internal/gc;->e:Lcom/tapjoy/internal/ed$a;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tapjoy/internal/ed$a;->m:Ljava/lang/String;

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 95
    iput-object v2, p0, Lcom/tapjoy/internal/gc;->g:Landroid/content/Context;

    .line 1074
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "android_id"

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1075
    const-string v3, "9774d56d682e549c"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    invoke-static {v0}, Lcom/tapjoy/internal/ct;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    :goto_0
    if-nez v0, :cond_0

    .line 99
    invoke-static {v2}, Lcom/tapjoy/internal/w;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    .line 100
    new-instance v4, Ljava/io/File;

    .line 101
    invoke-static {v2}, Lcom/tapjoy/internal/fz;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    const-string v5, "deviceid"

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-eqz v3, :cond_17

    new-instance v0, Ljava/io/File;

    const-string v5, ".io.5rocks"

    invoke-direct {v0, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 100
    :goto_1
    invoke-static {v4, v0}, Lcom/tapjoy/internal/aa;->a(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 104
    :cond_0
    iget-object v3, p0, Lcom/tapjoy/internal/gc;->e:Lcom/tapjoy/internal/ed$a;

    iput-object v0, v3, Lcom/tapjoy/internal/ed$a;->d:Ljava/lang/String;

    .line 106
    invoke-static {v2}, Lcom/tapjoy/internal/ab;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 107
    if-eqz v0, :cond_1

    .line 108
    iget-object v3, p0, Lcom/tapjoy/internal/gc;->e:Lcom/tapjoy/internal/ed$a;

    const-string v4, ":"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/tapjoy/internal/ed$a;->c:Ljava/lang/String;

    .line 111
    :cond_1
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 112
    const-string v0, "phone"

    .line 113
    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 114
    if-eqz v0, :cond_4

    .line 115
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v4

    .line 116
    invoke-static {v4}, Lcom/tapjoy/internal/ct;->c(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 117
    iget-object v5, p0, Lcom/tapjoy/internal/gc;->e:Lcom/tapjoy/internal/ed$a;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcom/tapjoy/internal/ed$a;->q:Ljava/lang/String;

    .line 121
    :cond_2
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v4

    .line 122
    invoke-static {v4}, Lcom/tapjoy/internal/ct;->c(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 123
    iget-object v5, p0, Lcom/tapjoy/internal/gc;->e:Lcom/tapjoy/internal/ed$a;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcom/tapjoy/internal/ed$a;->r:Ljava/lang/String;

    .line 127
    :cond_3
    invoke-static {}, Lcom/tapjoy/internal/ez;->b()Lcom/tapjoy/internal/ex;

    move-result-object v4

    const-string v5, "analytics_gather_imei"

    invoke-virtual {v4, v5}, Lcom/tapjoy/internal/ex;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 128
    const-string v4, "android.permission.READ_PHONE_STATE"

    .line 129
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 128
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 130
    if-nez v4, :cond_4

    .line 132
    :try_start_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-static {v0}, Lcom/tapjoy/internal/ct;->c(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 134
    iget-object v4, p0, Lcom/tapjoy/internal/gc;->e:Lcom/tapjoy/internal/ed$a;

    iput-object v0, v4, Lcom/tapjoy/internal/ed$a;->s:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_4

    .line 145
    :cond_4
    :goto_2
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 146
    iget-object v0, p0, Lcom/tapjoy/internal/gc;->e:Lcom/tapjoy/internal/ed$a;

    iput-object v2, v0, Lcom/tapjoy/internal/ed$a;->n:Ljava/lang/String;

    .line 148
    iget-object v4, p0, Lcom/tapjoy/internal/gc;->e:Lcom/tapjoy/internal/ed$a;

    .line 1246
    invoke-static {v3, v2}, Lcom/tapjoy/internal/ae;->e(Landroid/content/pm/PackageManager;Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object v0

    .line 1247
    if-eqz v0, :cond_18

    array-length v5, v0

    if-lez v5, :cond_18

    .line 1248
    const/4 v5, 0x0

    aget-object v0, v0, v5

    .line 2232
    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/internal/cm;->a([B)[B

    move-result-object v0

    invoke-static {v0, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 148
    :goto_3
    invoke-static {v0}, Lcom/tapjoy/internal/ct;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/tapjoy/internal/ed$a;->o:Ljava/lang/String;

    .line 150
    iget-object v0, p0, Lcom/tapjoy/internal/gc;->f:Lcom/tapjoy/internal/dx$a;

    invoke-static {v3, v2}, Lcom/tapjoy/internal/ae;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/tapjoy/internal/dx$a;->c:Ljava/lang/String;

    .line 151
    iget-object v0, p0, Lcom/tapjoy/internal/gc;->f:Lcom/tapjoy/internal/dx$a;

    invoke-static {v3, v2}, Lcom/tapjoy/internal/ae;->b(Landroid/content/pm/PackageManager;Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 3149
    iput-object v4, v0, Lcom/tapjoy/internal/dx$a;->d:Ljava/lang/Integer;

    .line 153
    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 154
    invoke-static {v0}, Lcom/tapjoy/internal/ct;->c(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 155
    iget-object v4, p0, Lcom/tapjoy/internal/gc;->f:Lcom/tapjoy/internal/dx$a;

    iput-object v0, v4, Lcom/tapjoy/internal/dx$a;->f:Ljava/lang/String;

    .line 158
    :cond_5
    invoke-static {v3, v2}, Lcom/tapjoy/internal/gc;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 159
    invoke-static {v0}, Lcom/tapjoy/internal/ct;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 160
    iget-object v2, p0, Lcom/tapjoy/internal/gc;->f:Lcom/tapjoy/internal/dx$a;

    iput-object v0, v2, Lcom/tapjoy/internal/dx$a;->g:Ljava/lang/String;

    .line 163
    :cond_6
    invoke-virtual {p0}, Lcom/tapjoy/internal/gc;->a()V

    .line 165
    iput-object p2, p0, Lcom/tapjoy/internal/gc;->c:Lcom/tapjoy/internal/gj;

    .line 3189
    iget-object v0, p0, Lcom/tapjoy/internal/gc;->c:Lcom/tapjoy/internal/gj;

    iget-object v0, v0, Lcom/tapjoy/internal/gj;->c:Lcom/tapjoy/internal/q;

    invoke-virtual {v0}, Lcom/tapjoy/internal/q;->a()Ljava/lang/String;

    move-result-object v0

    .line 3190
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_7

    .line 3191
    iget-object v2, p0, Lcom/tapjoy/internal/gc;->e:Lcom/tapjoy/internal/ed$a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " 11.10.1/Android"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/tapjoy/internal/ed$a;->p:Ljava/lang/String;

    .line 3194
    :cond_7
    iget-object v0, p0, Lcom/tapjoy/internal/gc;->c:Lcom/tapjoy/internal/gj;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gj;->b()Ljava/lang/String;

    move-result-object v0

    .line 3195
    if-eqz v0, :cond_8

    .line 3196
    iget-object v2, p0, Lcom/tapjoy/internal/gc;->b:Lcom/tapjoy/internal/ek$a;

    iput-object v0, v2, Lcom/tapjoy/internal/ek$a;->d:Ljava/lang/String;

    .line 3199
    :cond_8
    iget-object v0, p0, Lcom/tapjoy/internal/gc;->b:Lcom/tapjoy/internal/ek$a;

    iget-object v4, p0, Lcom/tapjoy/internal/gc;->c:Lcom/tapjoy/internal/gj;

    .line 4168
    iget-object v2, v4, Lcom/tapjoy/internal/gj;->b:Landroid/content/SharedPreferences;

    const-string v3, "it"

    invoke-interface {v2, v3, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 4169
    cmp-long v5, v2, v8

    if-nez v5, :cond_a

    .line 4170
    iget-object v2, v4, Lcom/tapjoy/internal/gj;->a:Landroid/content/Context;

    .line 5110
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/tapjoy/internal/ae;->c(Landroid/content/pm/PackageManager;Ljava/lang/String;)J

    move-result-wide v2

    .line 4171
    cmp-long v5, v2, v8

    if-nez v5, :cond_9

    .line 4172
    iget-object v2, v4, Lcom/tapjoy/internal/gj;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/tapjoy/internal/fz;->d(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 4173
    cmp-long v5, v2, v8

    if-nez v5, :cond_9

    .line 4174
    new-instance v2, Ljava/io/File;

    iget-object v3, v4, Lcom/tapjoy/internal/gj;->a:Landroid/content/Context;

    .line 5185
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/tapjoy/internal/ae;->d(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4174
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 4175
    cmp-long v5, v2, v8

    if-nez v5, :cond_9

    .line 4176
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 4180
    :cond_9
    iget-object v4, v4, Lcom/tapjoy/internal/gj;->b:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "it"

    invoke-interface {v4, v5, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3199
    :cond_a
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Lcom/tapjoy/internal/ek$a;->c:Ljava/lang/Long;

    .line 3201
    iget-object v0, p0, Lcom/tapjoy/internal/gc;->c:Lcom/tapjoy/internal/gj;

    iget-object v0, v0, Lcom/tapjoy/internal/gj;->f:Lcom/tapjoy/internal/m;

    invoke-virtual {v0}, Lcom/tapjoy/internal/m;->b()I

    move-result v0

    .line 3202
    iget-object v2, p0, Lcom/tapjoy/internal/gc;->b:Lcom/tapjoy/internal/ek$a;

    const/4 v3, 0x7

    invoke-static {v3, v0}, Lcom/tapjoy/internal/gc;->a(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/tapjoy/internal/ek$a;->e:Ljava/lang/Integer;

    .line 3203
    iget-object v2, p0, Lcom/tapjoy/internal/gc;->b:Lcom/tapjoy/internal/ek$a;

    const/16 v3, 0x1e

    invoke-static {v3, v0}, Lcom/tapjoy/internal/gc;->a(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Lcom/tapjoy/internal/ek$a;->f:Ljava/lang/Integer;

    .line 3205
    iget-object v0, p0, Lcom/tapjoy/internal/gc;->c:Lcom/tapjoy/internal/gj;

    iget-object v0, v0, Lcom/tapjoy/internal/gj;->h:Lcom/tapjoy/internal/m;

    invoke-virtual {v0}, Lcom/tapjoy/internal/m;->b()I

    move-result v0

    .line 3206
    if-lez v0, :cond_b

    .line 3207
    iget-object v2, p0, Lcom/tapjoy/internal/gc;->b:Lcom/tapjoy/internal/ek$a;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Lcom/tapjoy/internal/ek$a;->h:Ljava/lang/Integer;

    .line 3209
    :cond_b
    iget-object v0, p0, Lcom/tapjoy/internal/gc;->c:Lcom/tapjoy/internal/gj;

    iget-object v0, v0, Lcom/tapjoy/internal/gj;->i:Lcom/tapjoy/internal/n;

    invoke-virtual {v0}, Lcom/tapjoy/internal/n;->a()J

    move-result-wide v2

    .line 3210
    cmp-long v0, v2, v8

    if-lez v0, :cond_c

    .line 3211
    iget-object v0, p0, Lcom/tapjoy/internal/gc;->b:Lcom/tapjoy/internal/ek$a;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Lcom/tapjoy/internal/ek$a;->i:Ljava/lang/Long;

    .line 3213
    :cond_c
    iget-object v0, p0, Lcom/tapjoy/internal/gc;->c:Lcom/tapjoy/internal/gj;

    iget-object v0, v0, Lcom/tapjoy/internal/gj;->j:Lcom/tapjoy/internal/n;

    invoke-virtual {v0}, Lcom/tapjoy/internal/n;->a()J

    move-result-wide v2

    .line 3214
    cmp-long v0, v2, v8

    if-lez v0, :cond_d

    .line 3215
    iget-object v0, p0, Lcom/tapjoy/internal/gc;->b:Lcom/tapjoy/internal/ek$a;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Lcom/tapjoy/internal/ek$a;->j:Ljava/lang/Long;

    .line 3217
    :cond_d
    iget-object v0, p0, Lcom/tapjoy/internal/gc;->c:Lcom/tapjoy/internal/gj;

    iget-object v0, v0, Lcom/tapjoy/internal/gj;->k:Lcom/tapjoy/internal/n;

    invoke-virtual {v0}, Lcom/tapjoy/internal/n;->a()J

    move-result-wide v2

    .line 3218
    cmp-long v0, v2, v8

    if-lez v0, :cond_e

    .line 3219
    iget-object v0, p0, Lcom/tapjoy/internal/gc;->b:Lcom/tapjoy/internal/ek$a;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Lcom/tapjoy/internal/ek$a;->k:Ljava/lang/Long;

    .line 3222
    :cond_e
    iget-object v0, p0, Lcom/tapjoy/internal/gc;->c:Lcom/tapjoy/internal/gj;

    iget-object v0, v0, Lcom/tapjoy/internal/gj;->l:Lcom/tapjoy/internal/q;

    invoke-virtual {v0}, Lcom/tapjoy/internal/q;->a()Ljava/lang/String;

    move-result-object v0

    .line 3223
    if-eqz v0, :cond_f

    .line 3224
    iget-object v2, p0, Lcom/tapjoy/internal/gc;->b:Lcom/tapjoy/internal/ek$a;

    iput-object v0, v2, Lcom/tapjoy/internal/ek$a;->l:Ljava/lang/String;

    .line 3226
    :cond_f
    iget-object v0, p0, Lcom/tapjoy/internal/gc;->c:Lcom/tapjoy/internal/gj;

    iget-object v0, v0, Lcom/tapjoy/internal/gj;->m:Lcom/tapjoy/internal/m;

    invoke-virtual {v0}, Lcom/tapjoy/internal/m;->b()I

    move-result v0

    .line 3227
    if-lez v0, :cond_10

    .line 3228
    iget-object v2, p0, Lcom/tapjoy/internal/gc;->b:Lcom/tapjoy/internal/ek$a;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Lcom/tapjoy/internal/ek$a;->m:Ljava/lang/Integer;

    .line 3230
    :cond_10
    iget-object v0, p0, Lcom/tapjoy/internal/gc;->c:Lcom/tapjoy/internal/gj;

    iget-object v0, v0, Lcom/tapjoy/internal/gj;->n:Lcom/tapjoy/internal/k;

    invoke-virtual {v0}, Lcom/tapjoy/internal/k;->a()D

    move-result-wide v2

    .line 3231
    cmpl-double v0, v2, v10

    if-eqz v0, :cond_11

    .line 3232
    iget-object v0, p0, Lcom/tapjoy/internal/gc;->b:Lcom/tapjoy/internal/ek$a;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, v0, Lcom/tapjoy/internal/ek$a;->n:Ljava/lang/Double;

    .line 3234
    :cond_11
    iget-object v0, p0, Lcom/tapjoy/internal/gc;->c:Lcom/tapjoy/internal/gj;

    iget-object v0, v0, Lcom/tapjoy/internal/gj;->o:Lcom/tapjoy/internal/n;

    invoke-virtual {v0}, Lcom/tapjoy/internal/n;->a()J

    move-result-wide v2

    .line 3235
    cmp-long v0, v2, v8

    if-lez v0, :cond_12

    .line 3236
    iget-object v0, p0, Lcom/tapjoy/internal/gc;->b:Lcom/tapjoy/internal/ek$a;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Lcom/tapjoy/internal/ek$a;->o:Ljava/lang/Long;

    .line 3238
    :cond_12
    iget-object v0, p0, Lcom/tapjoy/internal/gc;->c:Lcom/tapjoy/internal/gj;

    iget-object v0, v0, Lcom/tapjoy/internal/gj;->p:Lcom/tapjoy/internal/k;

    invoke-virtual {v0}, Lcom/tapjoy/internal/k;->a()D

    move-result-wide v2

    .line 3239
    cmpl-double v0, v2, v10

    if-eqz v0, :cond_13

    .line 3240
    iget-object v0, p0, Lcom/tapjoy/internal/gc;->b:Lcom/tapjoy/internal/ek$a;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, v0, Lcom/tapjoy/internal/ek$a;->p:Ljava/lang/Double;

    .line 3243
    :cond_13
    iget-object v0, p0, Lcom/tapjoy/internal/gc;->c:Lcom/tapjoy/internal/gj;

    iget-object v0, v0, Lcom/tapjoy/internal/gj;->g:Lcom/tapjoy/internal/q;

    invoke-virtual {v0}, Lcom/tapjoy/internal/q;->a()Ljava/lang/String;

    move-result-object v0

    .line 3244
    if-eqz v0, :cond_14

    .line 3246
    const/4 v2, 0x2

    :try_start_1
    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 3247
    sget-object v2, Lcom/tapjoy/internal/ei;->c:Lcom/tapjoy/internal/dn;

    invoke-virtual {v2, v0}, Lcom/tapjoy/internal/dn;->a([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/ei;

    .line 3248
    iget-object v2, p0, Lcom/tapjoy/internal/gc;->b:Lcom/tapjoy/internal/ek$a;

    iget-object v2, v2, Lcom/tapjoy/internal/ek$a;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 3249
    iget-object v2, p0, Lcom/tapjoy/internal/gc;->b:Lcom/tapjoy/internal/ek$a;

    iget-object v2, v2, Lcom/tapjoy/internal/ek$a;->g:Ljava/util/List;

    iget-object v0, v0, Lcom/tapjoy/internal/ei;->d:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3257
    :cond_14
    :goto_4
    iget-object v0, p0, Lcom/tapjoy/internal/gc;->f:Lcom/tapjoy/internal/dx$a;

    iget-object v2, p0, Lcom/tapjoy/internal/gc;->c:Lcom/tapjoy/internal/gj;

    iget-object v2, v2, Lcom/tapjoy/internal/gj;->q:Lcom/tapjoy/internal/q;

    invoke-virtual {v2}, Lcom/tapjoy/internal/q;->a()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tapjoy/internal/dx$a;->e:Ljava/lang/String;

    .line 3259
    iget-object v0, p0, Lcom/tapjoy/internal/gc;->b:Lcom/tapjoy/internal/ek$a;

    iget-object v2, p0, Lcom/tapjoy/internal/gc;->c:Lcom/tapjoy/internal/gj;

    iget-object v2, v2, Lcom/tapjoy/internal/gj;->r:Lcom/tapjoy/internal/q;

    invoke-virtual {v2}, Lcom/tapjoy/internal/q;->a()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tapjoy/internal/ek$a;->s:Ljava/lang/String;

    .line 3261
    iget-object v0, p0, Lcom/tapjoy/internal/gc;->c:Lcom/tapjoy/internal/gj;

    iget-object v0, v0, Lcom/tapjoy/internal/gj;->s:Lcom/tapjoy/internal/m;

    invoke-virtual {v0}, Lcom/tapjoy/internal/m;->a()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3262
    iget-object v2, p0, Lcom/tapjoy/internal/gc;->b:Lcom/tapjoy/internal/ek$a;

    if-eq v0, v12, :cond_19

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_5
    iput-object v0, v2, Lcom/tapjoy/internal/ek$a;->t:Ljava/lang/Integer;

    .line 3264
    iget-object v0, p0, Lcom/tapjoy/internal/gc;->c:Lcom/tapjoy/internal/gj;

    iget-object v0, v0, Lcom/tapjoy/internal/gj;->t:Lcom/tapjoy/internal/m;

    invoke-virtual {v0}, Lcom/tapjoy/internal/m;->a()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3265
    iget-object v2, p0, Lcom/tapjoy/internal/gc;->b:Lcom/tapjoy/internal/ek$a;

    if-eq v0, v12, :cond_1a

    .line 3266
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_6
    iput-object v0, v2, Lcom/tapjoy/internal/ek$a;->u:Ljava/lang/Integer;

    .line 3268
    iget-object v0, p0, Lcom/tapjoy/internal/gc;->b:Lcom/tapjoy/internal/ek$a;

    iget-object v2, p0, Lcom/tapjoy/internal/gc;->c:Lcom/tapjoy/internal/gj;

    iget-object v2, v2, Lcom/tapjoy/internal/gj;->u:Lcom/tapjoy/internal/q;

    invoke-virtual {v2}, Lcom/tapjoy/internal/q;->a()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tapjoy/internal/ek$a;->v:Ljava/lang/String;

    .line 3269
    iget-object v0, p0, Lcom/tapjoy/internal/gc;->b:Lcom/tapjoy/internal/ek$a;

    iget-object v2, p0, Lcom/tapjoy/internal/gc;->c:Lcom/tapjoy/internal/gj;

    iget-object v2, v2, Lcom/tapjoy/internal/gj;->v:Lcom/tapjoy/internal/q;

    invoke-virtual {v2}, Lcom/tapjoy/internal/q;->a()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tapjoy/internal/ek$a;->w:Ljava/lang/String;

    .line 3270
    iget-object v0, p0, Lcom/tapjoy/internal/gc;->b:Lcom/tapjoy/internal/ek$a;

    iget-object v2, p0, Lcom/tapjoy/internal/gc;->c:Lcom/tapjoy/internal/gj;

    iget-object v2, v2, Lcom/tapjoy/internal/gj;->w:Lcom/tapjoy/internal/q;

    invoke-virtual {v2}, Lcom/tapjoy/internal/q;->a()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tapjoy/internal/ek$a;->x:Ljava/lang/String;

    .line 3271
    iget-object v0, p0, Lcom/tapjoy/internal/gc;->b:Lcom/tapjoy/internal/ek$a;

    iget-object v2, p0, Lcom/tapjoy/internal/gc;->c:Lcom/tapjoy/internal/gj;

    iget-object v2, v2, Lcom/tapjoy/internal/gj;->x:Lcom/tapjoy/internal/q;

    invoke-virtual {v2}, Lcom/tapjoy/internal/q;->a()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tapjoy/internal/ek$a;->y:Ljava/lang/String;

    .line 3272
    iget-object v0, p0, Lcom/tapjoy/internal/gc;->b:Lcom/tapjoy/internal/ek$a;

    iget-object v2, p0, Lcom/tapjoy/internal/gc;->c:Lcom/tapjoy/internal/gj;

    iget-object v2, v2, Lcom/tapjoy/internal/gj;->y:Lcom/tapjoy/internal/q;

    invoke-virtual {v2}, Lcom/tapjoy/internal/q;->a()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tapjoy/internal/ek$a;->z:Ljava/lang/String;

    .line 3274
    iget-object v0, p0, Lcom/tapjoy/internal/gc;->c:Lcom/tapjoy/internal/gj;

    iget-object v0, v0, Lcom/tapjoy/internal/gj;->z:Lcom/tapjoy/internal/q;

    invoke-virtual {v0}, Lcom/tapjoy/internal/q;->a()Ljava/lang/String;

    move-result-object v0

    .line 3275
    if-eqz v0, :cond_15

    .line 3277
    const/4 v2, 0x2

    :try_start_2
    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 3278
    sget-object v2, Lcom/tapjoy/internal/ej;->c:Lcom/tapjoy/internal/dn;

    invoke-virtual {v2, v0}, Lcom/tapjoy/internal/dn;->a([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/ej;

    .line 3279
    iget-object v2, p0, Lcom/tapjoy/internal/gc;->b:Lcom/tapjoy/internal/ek$a;

    iget-object v2, v2, Lcom/tapjoy/internal/ek$a;->A:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 3280
    iget-object v2, p0, Lcom/tapjoy/internal/gc;->b:Lcom/tapjoy/internal/ek$a;

    iget-object v2, v2, Lcom/tapjoy/internal/ek$a;->A:Ljava/util/List;

    iget-object v0, v0, Lcom/tapjoy/internal/ej;->d:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 3288
    :cond_15
    :goto_7
    iget-object v0, p0, Lcom/tapjoy/internal/gc;->c:Lcom/tapjoy/internal/gj;

    iget-object v0, v0, Lcom/tapjoy/internal/gj;->A:Lcom/tapjoy/internal/q;

    invoke-virtual {v0}, Lcom/tapjoy/internal/q;->a()Ljava/lang/String;

    move-result-object v0

    .line 3289
    iget-object v2, p0, Lcom/tapjoy/internal/gc;->c:Lcom/tapjoy/internal/gj;

    iget-object v2, v2, Lcom/tapjoy/internal/gj;->B:Lcom/tapjoy/internal/j;

    invoke-virtual {v2}, Lcom/tapjoy/internal/j;->a()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 3290
    if-eqz v0, :cond_1b

    .line 3291
    iget-object v1, p0, Lcom/tapjoy/internal/gc;->b:Lcom/tapjoy/internal/ek$a;

    iput-object v0, v1, Lcom/tapjoy/internal/ek$a;->q:Ljava/lang/String;

    .line 3292
    iget-object v0, p0, Lcom/tapjoy/internal/gc;->b:Lcom/tapjoy/internal/ek$a;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/tapjoy/internal/ek$a;->r:Ljava/lang/Boolean;

    .line 3298
    :goto_8
    iget-object v0, p0, Lcom/tapjoy/internal/gc;->b:Lcom/tapjoy/internal/ek$a;

    iget-object v1, p0, Lcom/tapjoy/internal/gc;->c:Lcom/tapjoy/internal/gj;

    iget-object v1, v1, Lcom/tapjoy/internal/gj;->C:Lcom/tapjoy/internal/j;

    invoke-virtual {v1}, Lcom/tapjoy/internal/j;->a()Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/tapjoy/internal/ek$a;->B:Ljava/lang/Boolean;

    .line 5670
    new-instance v0, Lcom/tapjoy/internal/gc$1;

    invoke-direct {v0, p0}, Lcom/tapjoy/internal/gc$1;-><init>(Lcom/tapjoy/internal/gc;)V

    .line 5706
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 169
    return-void

    :cond_16
    move-object v0, v1

    .line 1075
    goto/16 :goto_0

    :cond_17
    move-object v0, v1

    .line 101
    goto/16 :goto_1

    :cond_18
    move-object v0, v1

    .line 1250
    goto/16 :goto_3

    .line 3251
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/tapjoy/internal/gc;->c:Lcom/tapjoy/internal/gj;

    iget-object v0, v0, Lcom/tapjoy/internal/gj;->g:Lcom/tapjoy/internal/q;

    invoke-virtual {v0}, Lcom/tapjoy/internal/q;->c()V

    goto/16 :goto_4

    .line 3253
    :catch_1
    move-exception v0

    iget-object v0, p0, Lcom/tapjoy/internal/gc;->c:Lcom/tapjoy/internal/gj;

    iget-object v0, v0, Lcom/tapjoy/internal/gj;->g:Lcom/tapjoy/internal/q;

    invoke-virtual {v0}, Lcom/tapjoy/internal/q;->c()V

    goto/16 :goto_4

    :cond_19
    move-object v0, v1

    .line 3262
    goto/16 :goto_5

    :cond_1a
    move-object v0, v1

    .line 3266
    goto/16 :goto_6

    .line 3282
    :catch_2
    move-exception v0

    iget-object v0, p0, Lcom/tapjoy/internal/gc;->c:Lcom/tapjoy/internal/gj;

    iget-object v0, v0, Lcom/tapjoy/internal/gj;->z:Lcom/tapjoy/internal/q;

    invoke-virtual {v0}, Lcom/tapjoy/internal/q;->c()V

    goto :goto_7

    .line 3284
    :catch_3
    move-exception v0

    iget-object v0, p0, Lcom/tapjoy/internal/gc;->c:Lcom/tapjoy/internal/gj;

    iget-object v0, v0, Lcom/tapjoy/internal/gj;->z:Lcom/tapjoy/internal/q;

    invoke-virtual {v0}, Lcom/tapjoy/internal/q;->c()V

    goto :goto_7

    .line 3294
    :cond_1b
    iget-object v0, p0, Lcom/tapjoy/internal/gc;->b:Lcom/tapjoy/internal/ek$a;

    iput-object v1, v0, Lcom/tapjoy/internal/ek$a;->q:Ljava/lang/String;

    .line 3295
    iget-object v0, p0, Lcom/tapjoy/internal/gc;->b:Lcom/tapjoy/internal/ek$a;

    iput-object v1, v0, Lcom/tapjoy/internal/ek$a;->r:Ljava/lang/Boolean;

    goto :goto_8

    :catch_4
    move-exception v0

    goto/16 :goto_2

    .line 140
    :catch_5
    move-exception v0

    goto/16 :goto_2
.end method

.method private static a(II)I
    .locals 1

    .prologue
    .line 428
    const/4 v0, 0x1

    shl-int/2addr v0, p0

    add-int/lit8 v0, v0, -0x1

    and-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/tapjoy/internal/gc;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/tapjoy/internal/gc;->g:Landroid/content/Context;

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/tapjoy/internal/gc;
    .locals 3

    .prologue
    .line 62
    const-class v1, Lcom/tapjoy/internal/gc;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tapjoy/internal/gc;->d:Lcom/tapjoy/internal/gc;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/tapjoy/internal/gc;

    invoke-static {p0}, Lcom/tapjoy/internal/gj;->a(Landroid/content/Context;)Lcom/tapjoy/internal/gj;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/tapjoy/internal/gc;-><init>(Landroid/content/Context;Lcom/tapjoy/internal/gj;)V

    sput-object v0, Lcom/tapjoy/internal/gc;->d:Lcom/tapjoy/internal/gc;

    .line 65
    :cond_0
    sget-object v0, Lcom/tapjoy/internal/gc;->d:Lcom/tapjoy/internal/gc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 173
    const/16 v0, 0x80

    .line 174
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 175
    if-eqz v0, :cond_0

    .line 176
    const-string v1, "com.tapjoy.appstore"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 177
    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 184
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/tapjoy/internal/gc;)Lcom/tapjoy/internal/gj;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/tapjoy/internal/gc;->c:Lcom/tapjoy/internal/gj;

    return-object v0
.end method

.method static synthetic c(Lcom/tapjoy/internal/gc;)Lcom/tapjoy/internal/ek$a;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/tapjoy/internal/gc;->b:Lcom/tapjoy/internal/ek$a;

    return-object v0
.end method

.method private g()V
    .locals 3

    .prologue
    .line 525
    sget-object v0, Lcom/tapjoy/internal/ei;->c:Lcom/tapjoy/internal/dn;

    new-instance v1, Lcom/tapjoy/internal/ei;

    iget-object v2, p0, Lcom/tapjoy/internal/gc;->b:Lcom/tapjoy/internal/ek$a;

    iget-object v2, v2, Lcom/tapjoy/internal/ek$a;->g:Ljava/util/List;

    invoke-direct {v1, v2}, Lcom/tapjoy/internal/ei;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/dn;->b(Ljava/lang/Object;)[B

    move-result-object v0

    .line 526
    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 527
    iget-object v1, p0, Lcom/tapjoy/internal/gc;->c:Lcom/tapjoy/internal/gj;

    iget-object v1, v1, Lcom/tapjoy/internal/gj;->g:Lcom/tapjoy/internal/q;

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/q;->a(Ljava/lang/String;)V

    .line 528
    return-void
.end method


# virtual methods
.method final a()V
    .locals 4

    .prologue
    .line 302
    monitor-enter p0

    .line 304
    :try_start_0
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 305
    iget-object v0, p0, Lcom/tapjoy/internal/gc;->g:Landroid/content/Context;

    .line 6024
    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 305
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 306
    invoke-static {}, Lcom/tapjoy/internal/fr;->a()Landroid/app/Activity;

    move-result-object v0

    .line 307
    if-eqz v0, :cond_0

    .line 308
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 309
    if-eqz v0, :cond_0

    .line 310
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 6074
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 6075
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 6076
    iget v0, v3, Landroid/graphics/Rect;->top:I

    .line 310
    sub-int v0, v2, v0

    iput v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/gc;->e:Lcom/tapjoy/internal/ed$a;

    iget v2, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/tapjoy/internal/ed$a;->i:Ljava/lang/Integer;

    .line 314
    iget-object v0, p0, Lcom/tapjoy/internal/gc;->e:Lcom/tapjoy/internal/ed$a;

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/tapjoy/internal/ed$a;->j:Ljava/lang/Integer;

    .line 315
    iget-object v0, p0, Lcom/tapjoy/internal/gc;->e:Lcom/tapjoy/internal/ed$a;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/tapjoy/internal/ed$a;->k:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    :goto_0
    :try_start_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final a(ILjava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 588
    monitor-enter p0

    .line 590
    packed-switch p1, :pswitch_data_0

    .line 627
    :cond_0
    :goto_0
    :try_start_0
    monitor-exit p0

    return v0

    .line 592
    :pswitch_0
    iget-object v2, p0, Lcom/tapjoy/internal/gc;->c:Lcom/tapjoy/internal/gj;

    iget-object v2, v2, Lcom/tapjoy/internal/gj;->u:Lcom/tapjoy/internal/q;

    invoke-virtual {v2, p2}, Lcom/tapjoy/internal/q;->a(Ljava/lang/String;)V

    .line 593
    iget-object v2, p0, Lcom/tapjoy/internal/gc;->b:Lcom/tapjoy/internal/ek$a;

    iget-object v2, v2, Lcom/tapjoy/internal/ek$a;->v:Ljava/lang/String;

    invoke-static {v2, p2}, Lcom/tapjoy/internal/cr;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 594
    :cond_1
    if-eqz v0, :cond_0

    .line 595
    iget-object v1, p0, Lcom/tapjoy/internal/gc;->b:Lcom/tapjoy/internal/ek$a;

    iput-object p2, v1, Lcom/tapjoy/internal/ek$a;->v:Ljava/lang/String;

    goto :goto_0

    .line 628
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 599
    :pswitch_1
    :try_start_1
    iget-object v2, p0, Lcom/tapjoy/internal/gc;->c:Lcom/tapjoy/internal/gj;

    iget-object v2, v2, Lcom/tapjoy/internal/gj;->v:Lcom/tapjoy/internal/q;

    invoke-virtual {v2, p2}, Lcom/tapjoy/internal/q;->a(Ljava/lang/String;)V

    .line 600
    iget-object v2, p0, Lcom/tapjoy/internal/gc;->b:Lcom/tapjoy/internal/ek$a;

    iget-object v2, v2, Lcom/tapjoy/internal/ek$a;->w:Ljava/lang/String;

    invoke-static {v2, p2}, Lcom/tapjoy/internal/cr;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    .line 601
    :cond_2
    if-eqz v0, :cond_0

    .line 602
    iget-object v1, p0, Lcom/tapjoy/internal/gc;->b:Lcom/tapjoy/internal/ek$a;

    iput-object p2, v1, Lcom/tapjoy/internal/ek$a;->w:Ljava/lang/String;

    goto :goto_0

    .line 606
    :pswitch_2
    iget-object v2, p0, Lcom/tapjoy/internal/gc;->c:Lcom/tapjoy/internal/gj;

    iget-object v2, v2, Lcom/tapjoy/internal/gj;->w:Lcom/tapjoy/internal/q;

    invoke-virtual {v2, p2}, Lcom/tapjoy/internal/q;->a(Ljava/lang/String;)V

    .line 607
    iget-object v2, p0, Lcom/tapjoy/internal/gc;->b:Lcom/tapjoy/internal/ek$a;

    iget-object v2, v2, Lcom/tapjoy/internal/ek$a;->x:Ljava/lang/String;

    invoke-static {v2, p2}, Lcom/tapjoy/internal/cr;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    .line 608
    :cond_3
    if-eqz v0, :cond_0

    .line 609
    iget-object v1, p0, Lcom/tapjoy/internal/gc;->b:Lcom/tapjoy/internal/ek$a;

    iput-object p2, v1, Lcom/tapjoy/internal/ek$a;->x:Ljava/lang/String;

    goto :goto_0

    .line 613
    :pswitch_3
    iget-object v2, p0, Lcom/tapjoy/internal/gc;->c:Lcom/tapjoy/internal/gj;

    iget-object v2, v2, Lcom/tapjoy/internal/gj;->x:Lcom/tapjoy/internal/q;

    invoke-virtual {v2, p2}, Lcom/tapjoy/internal/q;->a(Ljava/lang/String;)V

    .line 614
    iget-object v2, p0, Lcom/tapjoy/internal/gc;->b:Lcom/tapjoy/internal/ek$a;

    iget-object v2, v2, Lcom/tapjoy/internal/ek$a;->y:Ljava/lang/String;

    invoke-static {v2, p2}, Lcom/tapjoy/internal/cr;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 615
    :cond_4
    if-eqz v0, :cond_0

    .line 616
    iget-object v1, p0, Lcom/tapjoy/internal/gc;->b:Lcom/tapjoy/internal/ek$a;

    iput-object p2, v1, Lcom/tapjoy/internal/ek$a;->y:Ljava/lang/String;

    goto :goto_0

    .line 620
    :pswitch_4
    iget-object v2, p0, Lcom/tapjoy/internal/gc;->c:Lcom/tapjoy/internal/gj;

    iget-object v2, v2, Lcom/tapjoy/internal/gj;->y:Lcom/tapjoy/internal/q;

    invoke-virtual {v2, p2}, Lcom/tapjoy/internal/q;->a(Ljava/lang/String;)V

    .line 621
    iget-object v2, p0, Lcom/tapjoy/internal/gc;->b:Lcom/tapjoy/internal/ek$a;

    iget-object v2, v2, Lcom/tapjoy/internal/ek$a;->z:Ljava/lang/String;

    invoke-static {v2, p2}, Lcom/tapjoy/internal/cr;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 622
    :cond_5
    if-eqz v0, :cond_0

    .line 623
    iget-object v1, p0, Lcom/tapjoy/internal/gc;->b:Lcom/tapjoy/internal/ek$a;

    iput-object p2, v1, Lcom/tapjoy/internal/ek$a;->z:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 590
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final a(Ljava/lang/Integer;)Z
    .locals 2

    .prologue
    .line 563
    monitor-enter p0

    .line 564
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/gc;->c:Lcom/tapjoy/internal/gj;

    iget-object v0, v0, Lcom/tapjoy/internal/gj;->s:Lcom/tapjoy/internal/m;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/m;->a(Ljava/lang/Integer;)V

    .line 565
    iget-object v0, p0, Lcom/tapjoy/internal/gc;->b:Lcom/tapjoy/internal/ek$a;

    iget-object v0, v0, Lcom/tapjoy/internal/ek$a;->t:Ljava/lang/Integer;

    invoke-static {v0, p1}, Lcom/tapjoy/internal/cr;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 566
    :goto_0
    if-eqz v0, :cond_0

    .line 567
    iget-object v1, p0, Lcom/tapjoy/internal/gc;->b:Lcom/tapjoy/internal/ek$a;

    iput-object p1, v1, Lcom/tapjoy/internal/ek$a;->t:Ljava/lang/Integer;

    .line 569
    :cond_0
    monitor-exit p0

    return v0

    .line 565
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 570
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 531
    monitor-enter p0

    .line 532
    :try_start_0
    iget-object v2, p0, Lcom/tapjoy/internal/gc;->c:Lcom/tapjoy/internal/gj;

    iget-object v2, v2, Lcom/tapjoy/internal/gj;->q:Lcom/tapjoy/internal/q;

    invoke-virtual {v2, p1}, Lcom/tapjoy/internal/q;->a(Ljava/lang/String;)V

    .line 534
    if-eqz p1, :cond_1

    .line 535
    iget-object v2, p0, Lcom/tapjoy/internal/gc;->f:Lcom/tapjoy/internal/dx$a;

    iget-object v2, v2, Lcom/tapjoy/internal/dx$a;->e:Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/tapjoy/internal/cr;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 536
    :goto_0
    iget-object v1, p0, Lcom/tapjoy/internal/gc;->f:Lcom/tapjoy/internal/dx$a;

    iput-object p1, v1, Lcom/tapjoy/internal/dx$a;->e:Ljava/lang/String;

    .line 541
    :goto_1
    monitor-exit p0

    return v0

    :cond_0
    move v0, v1

    .line 535
    goto :goto_0

    .line 538
    :cond_1
    iget-object v2, p0, Lcom/tapjoy/internal/gc;->f:Lcom/tapjoy/internal/dx$a;

    iget-object v2, v2, Lcom/tapjoy/internal/dx$a;->e:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 539
    :goto_2
    iget-object v1, p0, Lcom/tapjoy/internal/gc;->f:Lcom/tapjoy/internal/dx$a;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/tapjoy/internal/dx$a;->e:Ljava/lang/String;

    goto :goto_1

    .line 542
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    move v0, v1

    .line 538
    goto :goto_2
.end method

.method final a(Ljava/lang/String;JZ)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 502
    monitor-enter p0

    .line 503
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/gc;->b:Lcom/tapjoy/internal/ek$a;

    iget-object v0, v0, Lcom/tapjoy/internal/ek$a;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    move v3, v2

    .line 504
    :goto_0
    if-ge v3, v4, :cond_2

    .line 505
    iget-object v0, p0, Lcom/tapjoy/internal/gc;->b:Lcom/tapjoy/internal/ek$a;

    iget-object v0, v0, Lcom/tapjoy/internal/ek$a;->g:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/eh;

    .line 506
    iget-object v5, v0, Lcom/tapjoy/internal/eh;->f:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 507
    if-eqz p4, :cond_0

    .line 508
    invoke-virtual {v0}, Lcom/tapjoy/internal/eh;->b()Lcom/tapjoy/internal/eh$a;

    move-result-object v0

    .line 509
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Lcom/tapjoy/internal/eh$a;->d:Ljava/lang/Long;

    .line 510
    iget-object v2, p0, Lcom/tapjoy/internal/gc;->b:Lcom/tapjoy/internal/ek$a;

    iget-object v2, v2, Lcom/tapjoy/internal/ek$a;->g:Ljava/util/List;

    invoke-virtual {v0}, Lcom/tapjoy/internal/eh$a;->b()Lcom/tapjoy/internal/eh;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 511
    monitor-exit p0

    move v0, v1

    .line 520
    :goto_1
    return v0

    .line 513
    :cond_0
    monitor-exit p0

    move v0, v2

    goto :goto_1

    .line 504
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 518
    :cond_2
    iget-object v0, p0, Lcom/tapjoy/internal/gc;->b:Lcom/tapjoy/internal/ek$a;

    iget-object v0, v0, Lcom/tapjoy/internal/ek$a;->g:Ljava/util/List;

    new-instance v2, Lcom/tapjoy/internal/eh;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lcom/tapjoy/internal/eh;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 519
    invoke-direct {p0}, Lcom/tapjoy/internal/gc;->g()V

    .line 520
    monitor-exit p0

    move v0, v1

    goto :goto_1

    .line 521
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Z)Z
    .locals 3

    .prologue
    .line 717
    monitor-enter p0

    .line 718
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/gc;->c:Lcom/tapjoy/internal/gj;

    iget-object v0, v0, Lcom/tapjoy/internal/gj;->C:Lcom/tapjoy/internal/j;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/j;->a(Z)V

    .line 719
    iget-object v0, p0, Lcom/tapjoy/internal/gc;->b:Lcom/tapjoy/internal/ek$a;

    iget-object v0, v0, Lcom/tapjoy/internal/ek$a;->B:Ljava/lang/Boolean;

    sget-object v1, Lcom/tapjoy/internal/ek;->r:Ljava/lang/Boolean;

    .line 720
    invoke-static {v0, v1}, Lcom/tapjoy/internal/cr;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    .line 721
    :goto_0
    iget-object v1, p0, Lcom/tapjoy/internal/gc;->b:Lcom/tapjoy/internal/ek$a;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcom/tapjoy/internal/ek$a;->B:Ljava/lang/Boolean;

    .line 722
    monitor-exit p0

    return v0

    .line 720
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 723
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b()Lcom/tapjoy/internal/ee;
    .locals 8

    .prologue
    .line 323
    monitor-enter p0

    .line 325
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/gc;->e:Lcom/tapjoy/internal/ed$a;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tapjoy/internal/ed$a;->l:Ljava/lang/String;

    .line 326
    iget-object v0, p0, Lcom/tapjoy/internal/gc;->e:Lcom/tapjoy/internal/ed$a;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tapjoy/internal/ed$a;->m:Ljava/lang/String;

    .line 329
    const/4 v1, 0x0

    .line 330
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xf731400

    sub-long/2addr v2, v4

    .line 332
    iget-object v0, p0, Lcom/tapjoy/internal/gc;->b:Lcom/tapjoy/internal/ek$a;

    iget-object v0, v0, Lcom/tapjoy/internal/ek$a;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/eh;

    .line 334
    iget-object v0, v0, Lcom/tapjoy/internal/eh;->g:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v0, v6, v2

    if-gtz v0, :cond_2

    .line 335
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 336
    const/4 v0, 0x1

    :goto_1
    move v1, v0

    .line 338
    goto :goto_0

    .line 340
    :cond_0
    if-eqz v1, :cond_1

    .line 341
    invoke-direct {p0}, Lcom/tapjoy/internal/gc;->g()V

    .line 344
    :cond_1
    new-instance v0, Lcom/tapjoy/internal/ee;

    iget-object v1, p0, Lcom/tapjoy/internal/gc;->e:Lcom/tapjoy/internal/ed$a;

    invoke-virtual {v1}, Lcom/tapjoy/internal/ed$a;->b()Lcom/tapjoy/internal/ed;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/gc;->f:Lcom/tapjoy/internal/dx$a;

    invoke-virtual {v2}, Lcom/tapjoy/internal/dx$a;->b()Lcom/tapjoy/internal/dx;

    move-result-object v2

    iget-object v3, p0, Lcom/tapjoy/internal/gc;->b:Lcom/tapjoy/internal/ek$a;

    invoke-virtual {v3}, Lcom/tapjoy/internal/ek$a;->b()Lcom/tapjoy/internal/ek;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/tapjoy/internal/ee;-><init>(Lcom/tapjoy/internal/ed;Lcom/tapjoy/internal/dx;Lcom/tapjoy/internal/ek;)V

    monitor-exit p0

    return-object v0

    .line 345
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public final b(Ljava/lang/Integer;)Z
    .locals 2

    .prologue
    .line 577
    monitor-enter p0

    .line 578
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/gc;->c:Lcom/tapjoy/internal/gj;

    iget-object v0, v0, Lcom/tapjoy/internal/gj;->t:Lcom/tapjoy/internal/m;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/m;->a(Ljava/lang/Integer;)V

    .line 579
    iget-object v0, p0, Lcom/tapjoy/internal/gc;->b:Lcom/tapjoy/internal/ek$a;

    iget-object v0, v0, Lcom/tapjoy/internal/ek$a;->u:Ljava/lang/Integer;

    invoke-static {v0, p1}, Lcom/tapjoy/internal/cr;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 580
    :goto_0
    if-eqz v0, :cond_0

    .line 581
    iget-object v1, p0, Lcom/tapjoy/internal/gc;->b:Lcom/tapjoy/internal/ek$a;

    iput-object p1, v1, Lcom/tapjoy/internal/ek$a;->u:Ljava/lang/Integer;

    .line 583
    :cond_0
    monitor-exit p0

    return v0

    .line 579
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 584
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 549
    monitor-enter p0

    .line 550
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/gc;->c:Lcom/tapjoy/internal/gj;

    iget-object v0, v0, Lcom/tapjoy/internal/gj;->r:Lcom/tapjoy/internal/q;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/q;->a(Ljava/lang/String;)V

    .line 551
    iget-object v0, p0, Lcom/tapjoy/internal/gc;->b:Lcom/tapjoy/internal/ek$a;

    iget-object v0, v0, Lcom/tapjoy/internal/ek$a;->s:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/tapjoy/internal/cr;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 552
    :goto_0
    if-eqz v0, :cond_0

    .line 553
    iget-object v1, p0, Lcom/tapjoy/internal/gc;->b:Lcom/tapjoy/internal/ek$a;

    iput-object p1, v1, Lcom/tapjoy/internal/ek$a;->s:Ljava/lang/String;

    .line 555
    :cond_0
    monitor-exit p0

    return v0

    .line 551
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 556
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 367
    monitor-enter p0

    .line 368
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/gc;->c:Lcom/tapjoy/internal/gj;

    iget-object v0, v0, Lcom/tapjoy/internal/gj;->d:Lcom/tapjoy/internal/q;

    invoke-virtual {v0}, Lcom/tapjoy/internal/q;->a()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 369
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final c(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 654
    monitor-enter p0

    .line 655
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/gc;->b:Lcom/tapjoy/internal/ek$a;

    iget-object v0, v0, Lcom/tapjoy/internal/ek$a;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 656
    iget-object v0, p0, Lcom/tapjoy/internal/gc;->b:Lcom/tapjoy/internal/ek$a;

    iget-object v0, v0, Lcom/tapjoy/internal/ek$a;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/eh;

    .line 657
    iget-object v2, v0, Lcom/tapjoy/internal/eh;->f:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 658
    invoke-virtual {v0}, Lcom/tapjoy/internal/eh;->b()Lcom/tapjoy/internal/eh$a;

    move-result-object v0

    .line 659
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Lcom/tapjoy/internal/eh$a;->e:Ljava/lang/Long;

    .line 660
    iget-object v2, p0, Lcom/tapjoy/internal/gc;->b:Lcom/tapjoy/internal/ek$a;

    iget-object v2, v2, Lcom/tapjoy/internal/ek$a;->g:Ljava/util/List;

    invoke-virtual {v0}, Lcom/tapjoy/internal/eh$a;->b()Lcom/tapjoy/internal/eh;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 661
    invoke-direct {p0}, Lcom/tapjoy/internal/gc;->g()V

    .line 662
    const/4 v0, 0x1

    monitor-exit p0

    .line 666
    :goto_1
    return v0

    .line 655
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 665
    :cond_1
    monitor-exit p0

    .line 666
    const/4 v0, 0x0

    goto :goto_1

    .line 665
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final d()Lcom/tapjoy/internal/ef;
    .locals 15

    .prologue
    const/4 v0, 0x0

    const/16 v12, 0x1e

    const/4 v1, 0x1

    .line 381
    monitor-enter p0

    .line 382
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 7039
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    mul-int/lit16 v3, v3, 0x2710

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x64

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x64

    const/4 v4, 0x5

    .line 7040
    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/2addr v4, v3

    .line 384
    iget-object v3, p0, Lcom/tapjoy/internal/gc;->c:Lcom/tapjoy/internal/gj;

    iget-object v3, v3, Lcom/tapjoy/internal/gj;->e:Lcom/tapjoy/internal/m;

    invoke-virtual {v3}, Lcom/tapjoy/internal/m;->a()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 385
    if-eq v3, v4, :cond_5

    .line 388
    if-nez v3, :cond_0

    .line 390
    iget-object v0, p0, Lcom/tapjoy/internal/gc;->b:Lcom/tapjoy/internal/ek$a;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/tapjoy/internal/ek$a;->e:Ljava/lang/Integer;

    .line 391
    iget-object v0, p0, Lcom/tapjoy/internal/gc;->b:Lcom/tapjoy/internal/ek$a;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/tapjoy/internal/ek$a;->f:Ljava/lang/Integer;

    .line 393
    new-instance v0, Lcom/tapjoy/internal/ef;

    const-string v2, "fq7_0_1"

    const-string v3, "fq30_0_1"

    const/4 v5, 0x0

    invoke-direct {v0, v2, v3, v5}, Lcom/tapjoy/internal/ef;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    :goto_0
    iget-object v2, p0, Lcom/tapjoy/internal/gc;->c:Lcom/tapjoy/internal/gj;

    iget-object v2, v2, Lcom/tapjoy/internal/gj;->e:Lcom/tapjoy/internal/m;

    invoke-virtual {v2, v4}, Lcom/tapjoy/internal/m;->a(I)V

    .line 419
    iget-object v2, p0, Lcom/tapjoy/internal/gc;->c:Lcom/tapjoy/internal/gj;

    iget-object v2, v2, Lcom/tapjoy/internal/gj;->f:Lcom/tapjoy/internal/m;

    invoke-virtual {v2, v1}, Lcom/tapjoy/internal/m;->a(I)V

    .line 420
    monitor-exit p0

    .line 422
    :goto_1
    return-object v0

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/gc;->c:Lcom/tapjoy/internal/gj;

    iget-object v0, v0, Lcom/tapjoy/internal/gj;->f:Lcom/tapjoy/internal/m;

    invoke-virtual {v0}, Lcom/tapjoy/internal/m;->a()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 396
    const/4 v0, 0x7

    invoke-static {v0, v5}, Lcom/tapjoy/internal/gc;->a(II)I

    move-result v6

    .line 397
    const/16 v0, 0x1e

    invoke-static {v0, v5}, Lcom/tapjoy/internal/gc;->a(II)I

    move-result v7

    .line 399
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 7044
    div-int/lit16 v0, v3, 0x2710

    div-int/lit8 v8, v3, 0x64

    rem-int/lit8 v8, v8, 0x64

    add-int/lit8 v8, v8, -0x1

    rem-int/lit8 v3, v3, 0x64

    invoke-virtual {v1, v0, v8, v3}, Ljava/util/Calendar;->set(III)V

    .line 8012
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    sub-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->signum(I)I

    move-result v8

    .line 8013
    packed-switch v8, :pswitch_data_0

    .line 8016
    :pswitch_0
    const/4 v0, 0x6

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    sub-int/2addr v0, v1

    .line 402
    :goto_2
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-lt v1, v12, :cond_3

    .line 403
    const/4 v0, 0x0

    .line 409
    :goto_3
    or-int/lit8 v0, v0, 0x1

    .line 411
    const/4 v1, 0x7

    invoke-static {v1, v0}, Lcom/tapjoy/internal/gc;->a(II)I

    move-result v2

    .line 412
    const/16 v1, 0x1e

    invoke-static {v1, v0}, Lcom/tapjoy/internal/gc;->a(II)I

    move-result v3

    .line 413
    iget-object v1, p0, Lcom/tapjoy/internal/gc;->b:Lcom/tapjoy/internal/ek$a;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v1, Lcom/tapjoy/internal/ek$a;->e:Ljava/lang/Integer;

    .line 414
    iget-object v1, p0, Lcom/tapjoy/internal/gc;->b:Lcom/tapjoy/internal/ek$a;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v1, Lcom/tapjoy/internal/ek$a;->f:Ljava/lang/Integer;

    .line 416
    new-instance v1, Lcom/tapjoy/internal/ef;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "fq7_"

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "fq30_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v5}, Lcom/tapjoy/internal/ef;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v13, v0

    move-object v0, v1

    move v1, v13

    goto/16 :goto_0

    .line 8018
    :pswitch_1
    invoke-virtual {v1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 8019
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v9, 0x2

    invoke-virtual {v2, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    const/4 v10, 0x5

    invoke-virtual {v2, v10}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v3, v9, v2}, Ljava/util/Calendar;->set(III)V

    .line 8020
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    move-wide v13, v2

    move-object v2, v0

    move-wide v0, v13

    .line 8030
    :goto_4
    const/4 v3, 0x0

    .line 8031
    :goto_5
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    cmp-long v9, v10, v0

    if-gez v9, :cond_1

    .line 8032
    const/4 v9, 0x5

    const/4 v10, 0x1

    invoke-virtual {v2, v9, v10}, Ljava/util/Calendar;->add(II)V

    .line 8033
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 8023
    :pswitch_2
    invoke-virtual {v2}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 8024
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v9, 0x2

    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    const/4 v10, 0x5

    .line 8025
    invoke-virtual {v1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 8024
    invoke-virtual {v0, v3, v9, v1}, Ljava/util/Calendar;->set(III)V

    .line 8026
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    move-wide v13, v2

    move-object v2, v0

    move-wide v0, v13

    goto :goto_4

    .line 8035
    :cond_1
    if-lez v8, :cond_2

    move v0, v3

    goto/16 :goto_2

    :cond_2
    neg-int v0, v3

    goto/16 :goto_2

    .line 404
    :cond_3
    if-ltz v0, :cond_4

    .line 405
    shl-int v0, v5, v0

    goto/16 :goto_3

    .line 407
    :cond_4
    neg-int v0, v0

    shr-int v0, v5, v0

    goto/16 :goto_3

    .line 422
    :cond_5
    monitor-exit p0

    goto/16 :goto_1

    .line 424
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 8013
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final e()Ljava/util/Set;
    .locals 2

    .prologue
    .line 632
    monitor-enter p0

    .line 633
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/tapjoy/internal/gc;->b:Lcom/tapjoy/internal/ek$a;

    iget-object v1, v1, Lcom/tapjoy/internal/ek$a;->A:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    monitor-exit p0

    return-object v0

    .line 634
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final f()Z
    .locals 2

    .prologue
    .line 710
    iget-object v0, p0, Lcom/tapjoy/internal/gc;->b:Lcom/tapjoy/internal/ek$a;

    iget-object v0, v0, Lcom/tapjoy/internal/ek$a;->B:Ljava/lang/Boolean;

    sget-object v1, Lcom/tapjoy/internal/ek;->r:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/tapjoy/internal/cr;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
