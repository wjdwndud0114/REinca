.class public Lcom/google/android/gms/analytics/zzb;
.super Lcom/google/android/gms/internal/zzrt;

# interfaces
.implements Lcom/google/android/gms/analytics/zzi;


# static fields
.field private static zzaaq:Ljava/text/DecimalFormat;


# instance fields
.field private final zzaam:Lcom/google/android/gms/internal/zzrw;

.field private final zzaar:Ljava/lang/String;

.field private final zzaas:Landroid/net/Uri;

.field private final zzaat:Z

.field private final zzaau:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzrw;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/gms/analytics/zzb;-><init>(Lcom/google/android/gms/internal/zzrw;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzrw;Ljava/lang/String;ZZ)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzrt;-><init>(Lcom/google/android/gms/internal/zzrw;)V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzdv(Ljava/lang/String;)Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/analytics/zzb;->zzaam:Lcom/google/android/gms/internal/zzrw;

    iput-object p2, p0, Lcom/google/android/gms/analytics/zzb;->zzaar:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/android/gms/analytics/zzb;->zzaat:Z

    iput-boolean p4, p0, Lcom/google/android/gms/analytics/zzb;->zzaau:Z

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzb;->zzaar:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/analytics/zzb;->zzbp(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/zzb;->zzaas:Landroid/net/Uri;

    return-void
.end method

.method private static zzQ(Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ", "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static zza(Ljava/util/Map;Ljava/lang/String;D)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "D)V"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmpl-double v0, p2, v0

    if-eqz v0, :cond_0

    invoke-static {p2, p3}, Lcom/google/android/gms/analytics/zzb;->zzb(D)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private static zza(Ljava/util/Map;Ljava/lang/String;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    if-lez p2, :cond_0

    if-lez p3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private static zza(Ljava/util/Map;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    const-string v0, "1"

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method static zzb(D)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/google/android/gms/analytics/zzb;->zzaaq:Ljava/text/DecimalFormat;

    if-nez v0, :cond_0

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.######"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/analytics/zzb;->zzaaq:Ljava/text/DecimalFormat;

    :cond_0
    sget-object v0, Lcom/google/android/gms/analytics/zzb;->zzaaq:Ljava/text/DecimalFormat;

    invoke-virtual {v0, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static zzb(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method static zzbp(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzac;->zzdv(Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "uri"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v1, "google-analytics.com"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static zzc(Lcom/google/android/gms/analytics/zze;)Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/analytics/zze;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x1

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-class v0, Lcom/google/android/gms/internal/zzri;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/zze;->zza(Ljava/lang/Class;)Lcom/google/android/gms/analytics/zzf;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzri;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzri;->zzmI()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/analytics/zzb;->zzi(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v6, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-class v0, Lcom/google/android/gms/internal/zzrn;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/zze;->zza(Ljava/lang/Class;)Lcom/google/android/gms/analytics/zzf;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzrn;

    if-eqz v0, :cond_2

    const-string v1, "t"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrn;->zzmT()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v1, v2}, Lcom/google/android/gms/analytics/zzb;->zzb(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cid"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrn;->zzlX()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v1, v2}, Lcom/google/android/gms/analytics/zzb;->zzb(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "uid"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrn;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v1, v2}, Lcom/google/android/gms/analytics/zzb;->zzb(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sc"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrn;->zzmW()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v1, v2}, Lcom/google/android/gms/analytics/zzb;->zzb(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sf"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrn;->zzmY()D

    move-result-wide v4

    invoke-static {v6, v1, v4, v5}, Lcom/google/android/gms/analytics/zzb;->zza(Ljava/util/Map;Ljava/lang/String;D)V

    const-string v1, "ni"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrn;->zzmX()Z

    move-result v2

    invoke-static {v6, v1, v2}, Lcom/google/android/gms/analytics/zzb;->zza(Ljava/util/Map;Ljava/lang/String;Z)V

    const-string v1, "adid"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrn;->zzmU()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v1, v2}, Lcom/google/android/gms/analytics/zzb;->zzb(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ate"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrn;->zzmV()Z

    move-result v0

    invoke-static {v6, v1, v0}, Lcom/google/android/gms/analytics/zzb;->zza(Ljava/util/Map;Ljava/lang/String;Z)V

    :cond_2
    const-class v0, Lcom/google/android/gms/internal/zzro;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/zze;->zza(Ljava/lang/Class;)Lcom/google/android/gms/analytics/zzf;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzro;

    if-eqz v0, :cond_3

    const-string v1, "cd"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzro;->zzna()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v1, v2}, Lcom/google/android/gms/analytics/zzb;->zzb(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "a"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzro;->zznb()I

    move-result v2

    int-to-double v4, v2

    invoke-static {v6, v1, v4, v5}, Lcom/google/android/gms/analytics/zzb;->zza(Ljava/util/Map;Ljava/lang/String;D)V

    const-string v1, "dr"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzro;->zznc()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v1, v0}, Lcom/google/android/gms/analytics/zzb;->zzb(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-class v0, Lcom/google/android/gms/internal/zzrl;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/zze;->zza(Ljava/lang/Class;)Lcom/google/android/gms/analytics/zzf;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzrl;

    if-eqz v0, :cond_4

    const-string v1, "ec"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrl;->getCategory()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v1, v2}, Lcom/google/android/gms/analytics/zzb;->zzb(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ea"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrl;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v1, v2}, Lcom/google/android/gms/analytics/zzb;->zzb(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "el"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrl;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v1, v2}, Lcom/google/android/gms/analytics/zzb;->zzb(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ev"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrl;->getValue()J

    move-result-wide v4

    long-to-double v4, v4

    invoke-static {v6, v1, v4, v5}, Lcom/google/android/gms/analytics/zzb;->zza(Ljava/util/Map;Ljava/lang/String;D)V

    :cond_4
    const-class v0, Lcom/google/android/gms/internal/zzrf;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/zze;->zza(Ljava/lang/Class;)Lcom/google/android/gms/analytics/zzf;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzrf;

    if-eqz v0, :cond_5

    const-string v1, "cn"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrf;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v1, v2}, Lcom/google/android/gms/analytics/zzb;->zzb(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cs"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrf;->getSource()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v1, v2}, Lcom/google/android/gms/analytics/zzb;->zzb(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cm"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrf;->zzmA()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v1, v2}, Lcom/google/android/gms/analytics/zzb;->zzb(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ck"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrf;->zzmB()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v1, v2}, Lcom/google/android/gms/analytics/zzb;->zzb(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cc"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrf;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v1, v2}, Lcom/google/android/gms/analytics/zzb;->zzb(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ci"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrf;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v1, v2}, Lcom/google/android/gms/analytics/zzb;->zzb(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "anid"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrf;->zzmC()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v1, v2}, Lcom/google/android/gms/analytics/zzb;->zzb(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "gclid"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrf;->zzmD()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v1, v2}, Lcom/google/android/gms/analytics/zzb;->zzb(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "dclid"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrf;->zzmE()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v1, v2}, Lcom/google/android/gms/analytics/zzb;->zzb(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "aclid"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrf;->zzmF()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v1, v0}, Lcom/google/android/gms/analytics/zzb;->zzb(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-class v0, Lcom/google/android/gms/internal/zzrm;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/zze;->zza(Ljava/lang/Class;)Lcom/google/android/gms/analytics/zzf;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzrm;

    if-eqz v0, :cond_6

    const-string v1, "exd"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrm;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v1, v2}, Lcom/google/android/gms/analytics/zzb;->zzb(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "exf"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrm;->zzmS()Z

    move-result v0

    invoke-static {v6, v1, v0}, Lcom/google/android/gms/analytics/zzb;->zza(Ljava/util/Map;Ljava/lang/String;Z)V

    :cond_6
    const-class v0, Lcom/google/android/gms/internal/zzrp;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/zze;->zza(Ljava/lang/Class;)Lcom/google/android/gms/analytics/zzf;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzrp;

    if-eqz v0, :cond_7

    const-string v1, "sn"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrp;->zznd()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v1, v2}, Lcom/google/android/gms/analytics/zzb;->zzb(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sa"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrp;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v1, v2}, Lcom/google/android/gms/analytics/zzb;->zzb(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "st"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrp;->getTarget()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v1, v0}, Lcom/google/android/gms/analytics/zzb;->zzb(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const-class v0, Lcom/google/android/gms/internal/zzrq;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/zze;->zza(Ljava/lang/Class;)Lcom/google/android/gms/analytics/zzf;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzrq;

    if-eqz v0, :cond_8

    const-string v1, "utv"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrq;->zzne()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v1, v2}, Lcom/google/android/gms/analytics/zzb;->zzb(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "utt"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrq;->getTimeInMillis()J

    move-result-wide v4

    long-to-double v4, v4

    invoke-static {v6, v1, v4, v5}, Lcom/google/android/gms/analytics/zzb;->zza(Ljava/util/Map;Ljava/lang/String;D)V

    const-string v1, "utc"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrq;->getCategory()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v1, v2}, Lcom/google/android/gms/analytics/zzb;->zzb(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "utl"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrq;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v1, v0}, Lcom/google/android/gms/analytics/zzb;->zzb(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    const-class v0, Lcom/google/android/gms/internal/zzrg;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/zze;->zza(Ljava/lang/Class;)Lcom/google/android/gms/analytics/zzf;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzrg;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrg;->zzmG()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/analytics/zzc;->zzam(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_a
    const-class v0, Lcom/google/android/gms/internal/zzrh;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/zze;->zza(Ljava/lang/Class;)Lcom/google/android/gms/analytics/zzf;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzrh;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrh;->zzmH()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/analytics/zzc;->zzao(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/gms/analytics/zzb;->zzb(D)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_c
    const-class v0, Lcom/google/android/gms/internal/zzrk;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/zze;->zza(Ljava/lang/Class;)Lcom/google/android/gms/analytics/zzf;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzrk;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrk;->zzmO()Lcom/google/android/gms/analytics/ecommerce/ProductAction;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/ecommerce/ProductAction;->build()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v5, "&"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v6, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_d
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v6, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_e
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrk;->zzmR()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v3

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/analytics/ecommerce/Promotion;

    invoke-static {v2}, Lcom/google/android/gms/analytics/zzc;->zzas(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/google/android/gms/analytics/ecommerce/Promotion;->zzbL(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_4

    :cond_f
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrk;->zzmP()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v3

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/analytics/ecommerce/Product;

    invoke-static {v2}, Lcom/google/android/gms/analytics/zzc;->zzaq(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/google/android/gms/analytics/ecommerce/Product;->zzbL(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_5

    :cond_10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrk;->zzmQ()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v2, v3

    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/analytics/zzc;->zzav(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v4, v3

    :goto_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/analytics/ecommerce/Product;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v4}, Lcom/google/android/gms/analytics/zzc;->zzat(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_11

    invoke-virtual {v10, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_8
    invoke-virtual {v1, v5}, Lcom/google/android/gms/analytics/ecommerce/Product;->zzbL(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_7

    :cond_11
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_8

    :cond_12
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "nm"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_14

    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_9
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_6

    :cond_14
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_9

    :cond_15
    const-class v0, Lcom/google/android/gms/internal/zzrj;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/zze;->zza(Ljava/lang/Class;)Lcom/google/android/gms/analytics/zzf;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzrj;

    if-eqz v0, :cond_16

    const-string v1, "ul"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrj;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v1, v2}, Lcom/google/android/gms/analytics/zzb;->zzb(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sd"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrj;->zzmJ()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v6, v1, v2, v3}, Lcom/google/android/gms/analytics/zzb;->zza(Ljava/util/Map;Ljava/lang/String;D)V

    const-string v1, "sr"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrj;->zzmK()I

    move-result v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrj;->zzmL()I

    move-result v3

    invoke-static {v6, v1, v2, v3}, Lcom/google/android/gms/analytics/zzb;->zza(Ljava/util/Map;Ljava/lang/String;II)V

    const-string v1, "vp"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrj;->zzmM()I

    move-result v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrj;->zzmN()I

    move-result v0

    invoke-static {v6, v1, v2, v0}, Lcom/google/android/gms/analytics/zzb;->zza(Ljava/util/Map;Ljava/lang/String;II)V

    :cond_16
    const-class v0, Lcom/google/android/gms/internal/zzre;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/zze;->zza(Ljava/lang/Class;)Lcom/google/android/gms/analytics/zzf;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzre;

    if-eqz v0, :cond_17

    const-string v1, "an"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzre;->zzmx()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v1, v2}, Lcom/google/android/gms/analytics/zzb;->zzb(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "aid"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzre;->zzjI()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v1, v2}, Lcom/google/android/gms/analytics/zzb;->zzb(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "aiid"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzre;->zzmz()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v1, v2}, Lcom/google/android/gms/analytics/zzb;->zzb(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "av"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzre;->zzmy()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v1, v0}, Lcom/google/android/gms/analytics/zzb;->zzb(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    return-object v6
.end method

.method private static zzi(Ljava/lang/Object;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_1

    move-object p0, v0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_2

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object p0, v0

    goto :goto_0

    :cond_2
    instance-of v1, p0, Ljava/lang/Double;

    if-eqz v1, :cond_4

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/analytics/zzb;->zzb(D)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    move-object p0, v0

    goto :goto_0

    :cond_4
    instance-of v1, p0, Ljava/lang/Boolean;

    if-eqz v1, :cond_6

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p0, v1, :cond_5

    const-string p0, "1"

    goto :goto_0

    :cond_5
    move-object p0, v0

    goto :goto_0

    :cond_6
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public zzb(Lcom/google/android/gms/analytics/zze;)V
    .locals 11

    const-wide/16 v1, 0x0

    const/4 v9, 0x1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/zze;->zzmg()Z

    move-result v0

    const-string v3, "Can\'t deliver not submitted measurement"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/Object;)V

    const-string v0, "deliver should be called on worker thread"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzdo(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/zze;->zzmb()Lcom/google/android/gms/analytics/zze;

    move-result-object v3

    const-class v0, Lcom/google/android/gms/internal/zzrn;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/analytics/zze;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/analytics/zzf;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/google/android/gms/internal/zzrn;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzrn;->zzmT()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/zzb;->zznr()Lcom/google/android/gms/internal/zzsx;

    move-result-object v0

    invoke-static {v3}, Lcom/google/android/gms/analytics/zzb;->zzc(Lcom/google/android/gms/analytics/zze;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "Ignoring measurement without type"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzsx;->zzg(Ljava/util/Map;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzrn;->zzlX()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/zzb;->zznr()Lcom/google/android/gms/internal/zzsx;

    move-result-object v0

    invoke-static {v3}, Lcom/google/android/gms/analytics/zzb;->zzc(Lcom/google/android/gms/analytics/zze;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "Ignoring measurement without client id"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzsx;->zzg(Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/analytics/zzb;->zzaam:Lcom/google/android/gms/internal/zzrw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrw;->zznE()Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getAppOptOut()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzrn;->zzmY()D

    move-result-wide v6

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzrn;->zzlX()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v7, v0}, Lcom/google/android/gms/internal/zztg;->zza(DLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Sampling enabled. Hit sampled out. sampling rate"

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/zzb;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {v3}, Lcom/google/android/gms/analytics/zzb;->zzc(Lcom/google/android/gms/analytics/zze;)Ljava/util/Map;

    move-result-object v10

    const-string v0, "v"

    const-string v3, "1"

    invoke-interface {v10, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "_v"

    sget-object v3, Lcom/google/android/gms/internal/zzrv;->zzacP:Ljava/lang/String;

    invoke-interface {v10, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "tid"

    iget-object v3, p0, Lcom/google/android/gms/analytics/zzb;->zzaar:Ljava/lang/String;

    invoke-interface {v10, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzb;->zzaam:Lcom/google/android/gms/internal/zzrw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrw;->zznE()Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->isDryRunEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v10}, Lcom/google/android/gms/analytics/zzb;->zzQ(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Dry run is enabled. GoogleAnalytics would have sent"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/zzb;->zzc(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    const-string v0, "uid"

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzrn;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v0, v3}, Lcom/google/android/gms/internal/zztg;->zzc(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-class v0, Lcom/google/android/gms/internal/zzre;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/analytics/zze;->zza(Ljava/lang/Class;)Lcom/google/android/gms/analytics/zzf;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzre;

    if-eqz v0, :cond_5

    const-string v3, "an"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzre;->zzmx()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v3, v4}, Lcom/google/android/gms/internal/zztg;->zzc(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "aid"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzre;->zzjI()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v3, v4}, Lcom/google/android/gms/internal/zztg;->zzc(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "av"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzre;->zzmy()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v3, v4}, Lcom/google/android/gms/internal/zztg;->zzc(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "aiid"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzre;->zzmz()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v3, v0}, Lcom/google/android/gms/internal/zztg;->zzc(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    new-instance v0, Lcom/google/android/gms/internal/zzry;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzrn;->zzlX()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/analytics/zzb;->zzaar:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzrn;->zzmU()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    move v5, v9

    :goto_1
    move-wide v6, v1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/zzry;-><init>(JLjava/lang/String;Ljava/lang/String;ZJLjava/util/Map;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/zzb;->zzlZ()Lcom/google/android/gms/internal/zzrs;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzrs;->zza(Lcom/google/android/gms/internal/zzry;)J

    move-result-wide v0

    const-string v2, "_s"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/zzst;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/zzb;->zznr()Lcom/google/android/gms/internal/zzsx;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/zze;->zzme()J

    move-result-wide v4

    move-object v3, v10

    move v6, v9

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zzst;-><init>(Lcom/google/android/gms/internal/zzrt;Ljava/util/Map;JZ)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/zzb;->zzlZ()Lcom/google/android/gms/internal/zzrs;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzrs;->zza(Lcom/google/android/gms/internal/zzst;)V

    goto/16 :goto_0

    :cond_6
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public zzlQ()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzb;->zzaas:Landroid/net/Uri;

    return-object v0
.end method
