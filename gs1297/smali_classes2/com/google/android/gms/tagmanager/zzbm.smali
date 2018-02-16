.class Lcom/google/android/gms/tagmanager/zzbm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzcl;


# instance fields
.field private final zzaca:Ljava/lang/String;

.field private final zzafl:J

.field private final zzafm:I

.field private zzafn:D

.field private zzafo:J

.field private final zzafp:Ljava/lang/Object;

.field private final zzbEF:J

.field private final zzuI:Lcom/google/android/gms/common/util/zze;


# direct methods
.method public constructor <init>(IIJJLjava/lang/String;Lcom/google/android/gms/common/util/zze;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzbm;->zzafp:Ljava/lang/Object;

    iput p2, p0, Lcom/google/android/gms/tagmanager/zzbm;->zzafm:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/google/android/gms/tagmanager/zzbm;->zzafn:D

    iput-wide p3, p0, Lcom/google/android/gms/tagmanager/zzbm;->zzafl:J

    iput-wide p5, p0, Lcom/google/android/gms/tagmanager/zzbm;->zzbEF:J

    iput-object p7, p0, Lcom/google/android/gms/tagmanager/zzbm;->zzaca:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/tagmanager/zzbm;->zzuI:Lcom/google/android/gms/common/util/zze;

    return-void
.end method


# virtual methods
.method public zzpv()Z
    .locals 12

    const/4 v0, 0x0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzbm;->zzafp:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzbm;->zzuI:Lcom/google/android/gms/common/util/zze;

    invoke-interface {v2}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/tagmanager/zzbm;->zzafo:J

    sub-long v4, v2, v4

    iget-wide v6, p0, Lcom/google/android/gms/tagmanager/zzbm;->zzbEF:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzbm;->zzaca:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x22

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Excessive "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " detected; call ignored."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/tagmanager/zzbo;->zzbe(Ljava/lang/String;)V

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    iget-wide v4, p0, Lcom/google/android/gms/tagmanager/zzbm;->zzafn:D

    iget v6, p0, Lcom/google/android/gms/tagmanager/zzbm;->zzafm:I

    int-to-double v6, v6

    cmpg-double v4, v4, v6

    if-gez v4, :cond_1

    iget-wide v4, p0, Lcom/google/android/gms/tagmanager/zzbm;->zzafo:J

    sub-long v4, v2, v4

    long-to-double v4, v4

    iget-wide v6, p0, Lcom/google/android/gms/tagmanager/zzbm;->zzafl:J

    long-to-double v6, v6

    div-double/2addr v4, v6

    const-wide/16 v6, 0x0

    cmpl-double v6, v4, v6

    if-lez v6, :cond_1

    iget v6, p0, Lcom/google/android/gms/tagmanager/zzbm;->zzafm:I

    int-to-double v6, v6

    iget-wide v8, p0, Lcom/google/android/gms/tagmanager/zzbm;->zzafn:D

    add-double/2addr v4, v8

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/gms/tagmanager/zzbm;->zzafn:D

    :cond_1
    iput-wide v2, p0, Lcom/google/android/gms/tagmanager/zzbm;->zzafo:J

    iget-wide v2, p0, Lcom/google/android/gms/tagmanager/zzbm;->zzafn:D

    cmpl-double v2, v2, v10

    if-ltz v2, :cond_2

    iget-wide v2, p0, Lcom/google/android/gms/tagmanager/zzbm;->zzafn:D

    sub-double/2addr v2, v10

    iput-wide v2, p0, Lcom/google/android/gms/tagmanager/zzbm;->zzafn:D

    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzbm;->zzaca:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x22

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Excessive "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " detected; call ignored."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/tagmanager/zzbo;->zzbe(Ljava/lang/String;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
