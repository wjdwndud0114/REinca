.class Lcom/google/android/gms/tagmanager/zzx$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/zzx;->zza(Ljava/util/List;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbDN:Ljava/util/List;

.field final synthetic zzbDO:J

.field final synthetic zzbDP:Lcom/google/android/gms/tagmanager/zzx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/zzx;Ljava/util/List;J)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzx$1;->zzbDP:Lcom/google/android/gms/tagmanager/zzx;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzx$1;->zzbDN:Ljava/util/List;

    iput-wide p3, p0, Lcom/google/android/gms/tagmanager/zzx$1;->zzbDO:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzx$1;->zzbDP:Lcom/google/android/gms/tagmanager/zzx;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzx$1;->zzbDN:Ljava/util/List;

    iget-wide v2, p0, Lcom/google/android/gms/tagmanager/zzx$1;->zzbDO:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/tagmanager/zzx;->zza(Lcom/google/android/gms/tagmanager/zzx;Ljava/util/List;J)V

    return-void
.end method
