.class Lcom/google/android/gms/tagmanager/DataLayer$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/DataLayer$zzc$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/DataLayer;->zzOR()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbDH:Lcom/google/android/gms/tagmanager/DataLayer;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/DataLayer;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/DataLayer$2;->zzbDH:Lcom/google/android/gms/tagmanager/DataLayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzJ(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/tagmanager/DataLayer$zza;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tagmanager/DataLayer$zza;

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/DataLayer$2;->zzbDH:Lcom/google/android/gms/tagmanager/DataLayer;

    iget-object v3, p0, Lcom/google/android/gms/tagmanager/DataLayer$2;->zzbDH:Lcom/google/android/gms/tagmanager/DataLayer;

    iget-object v4, v0, Lcom/google/android/gms/tagmanager/DataLayer$zza;->zzAH:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/gms/tagmanager/DataLayer$zza;->zzYe:Ljava/lang/Object;

    invoke-virtual {v3, v4, v0}, Lcom/google/android/gms/tagmanager/DataLayer;->zzo(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/gms/tagmanager/DataLayer;->zza(Lcom/google/android/gms/tagmanager/DataLayer;Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/DataLayer$2;->zzbDH:Lcom/google/android/gms/tagmanager/DataLayer;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/DataLayer;->zza(Lcom/google/android/gms/tagmanager/DataLayer;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
