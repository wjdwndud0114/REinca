.class Lcom/google/android/gms/tagmanager/zzj;
.super Lcom/google/android/gms/tagmanager/zzdk;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/tagmanager/zzj$zza;
    }
.end annotation


# static fields
.field private static final ID:Ljava/lang/String;

.field private static final URL:Ljava/lang/String;

.field private static final zzbCM:Ljava/lang/String;

.field private static final zzbCN:Ljava/lang/String;

.field static final zzbCO:Ljava/lang/String;

.field private static final zzbCP:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzbCQ:Lcom/google/android/gms/tagmanager/zzj$zza;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/zzag;->zzew:Lcom/google/android/gms/internal/zzag;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzag;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzj;->ID:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/zzah;->zzjZ:Lcom/google/android/gms/internal/zzah;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzah;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzj;->URL:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/zzah;->zzfy:Lcom/google/android/gms/internal/zzah;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzah;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzj;->zzbCM:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/zzah;->zzjY:Lcom/google/android/gms/internal/zzah;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzah;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzj;->zzbCN:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/tagmanager/zzj;->ID:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x11

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "gtm_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_unrepeatable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzj;->zzbCO:Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/google/android/gms/tagmanager/zzj;->zzbCP:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/tagmanager/zzj$1;

    invoke-direct {v0, p1}, Lcom/google/android/gms/tagmanager/zzj$1;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/tagmanager/zzj;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzj$zza;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzj$zza;)V
    .locals 4

    sget-object v0, Lcom/google/android/gms/tagmanager/zzj;->ID:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v3, Lcom/google/android/gms/tagmanager/zzj;->URL:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/tagmanager/zzdk;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzj;->zzbCQ:Lcom/google/android/gms/tagmanager/zzj$zza;

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzj;->mContext:Landroid/content/Context;

    return-void
.end method

.method private declared-synchronized zzgR(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/tagmanager/zzj;->zzgT(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/tagmanager/zzj;->zzgS(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/google/android/gms/tagmanager/zzj;->zzbCP:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public zzaa(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzaj$zza;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/tagmanager/zzj;->zzbCN:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/gms/tagmanager/zzj;->zzbCN:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaj$zza;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdm;->zze(Lcom/google/android/gms/internal/zzaj$zza;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_2

    invoke-direct {p0, v1}, Lcom/google/android/gms/tagmanager/zzj;->zzgR(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/google/android/gms/tagmanager/zzj;->URL:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaj$zza;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdm;->zze(Lcom/google/android/gms/internal/zzaj$zza;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    sget-object v0, Lcom/google/android/gms/tagmanager/zzj;->zzbCM:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaj$zza;

    if-eqz v0, :cond_8

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdm;->zzj(Lcom/google/android/gms/internal/zzaj$zza;)Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Ljava/util/List;

    if-nez v3, :cond_4

    const-string v1, "ArbitraryPixel: additional params not a list: not sending partial hit: "

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbo;->e(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v4, v0, Ljava/util/Map;

    if-nez v4, :cond_7

    const-string v1, "ArbitraryPixel: additional params contains non-map: not sending partial hit: "

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbo;->e(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_4

    :cond_8
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzj;->zzbCQ:Lcom/google/android/gms/tagmanager/zzj$zza;

    invoke-interface {v2}, Lcom/google/android/gms/tagmanager/zzj$zza;->zzOx()Lcom/google/android/gms/tagmanager/zzat;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/google/android/gms/tagmanager/zzat;->zzhi(Ljava/lang/String;)Z

    const-string v2, "ArbitraryPixel: url = "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbo;->v(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    const-class v2, Lcom/google/android/gms/tagmanager/zzj;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/google/android/gms/tagmanager/zzj;->zzbCP:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzj;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/google/android/gms/tagmanager/zzj;->zzbCO:Ljava/lang/String;

    const-string v4, "true"

    invoke-static {v0, v3, v1, v4}, Lcom/google/android/gms/tagmanager/zzdd;->zzc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v2

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_9
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_5
.end method

.method zzgS(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzj;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/google/android/gms/tagmanager/zzj;->zzbCO:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method zzgT(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/tagmanager/zzj;->zzbCP:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
