.class Lcom/google/android/gms/internal/zzgv$3$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzhx;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzgv$3;->zze(Lcom/google/android/gms/internal/zzjb;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzGA:Lcom/google/android/gms/internal/zzgv$3;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzgv$3;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgv$3$4;->zzGA:Lcom/google/android/gms/internal/zzgv$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzqp;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzqp;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgv$3$4;->zzGA:Lcom/google/android/gms/internal/zzgv$3;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzgv$3;->zzGy:Lcom/google/android/gms/internal/zzgv;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzgv;->zzb(Lcom/google/android/gms/internal/zzgv;)Lcom/google/android/gms/internal/zzqp;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqp;->getView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
