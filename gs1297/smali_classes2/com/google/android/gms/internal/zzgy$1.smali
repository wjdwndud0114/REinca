.class Lcom/google/android/gms/internal/zzgy$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzgy;->zze(Lcom/google/android/gms/dynamic/zzd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzGO:Lcom/google/android/gms/internal/zzgv;

.field final synthetic zzGP:Lcom/google/android/gms/internal/zzgy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzgy;Lcom/google/android/gms/internal/zzgv;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgy$1;->zzGP:Lcom/google/android/gms/internal/zzgy;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzgy$1;->zzGO:Lcom/google/android/gms/internal/zzgv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgy$1;->zzGO:Lcom/google/android/gms/internal/zzgv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzgv;->zzfU()Lcom/google/android/gms/internal/zzqp;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgy$1;->zzGP:Lcom/google/android/gms/internal/zzgy;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzgy;->zza(Lcom/google/android/gms/internal/zzgy;)Landroid/widget/FrameLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgy$1;->zzGP:Lcom/google/android/gms/internal/zzgy;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzgy;->zza(Lcom/google/android/gms/internal/zzgy;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqp;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgy$1;->zzGO:Lcom/google/android/gms/internal/zzgv;

    instance-of v0, v0, Lcom/google/android/gms/internal/zzgt;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgy$1;->zzGP:Lcom/google/android/gms/internal/zzgy;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgy$1;->zzGO:Lcom/google/android/gms/internal/zzgv;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzgy;->zza(Lcom/google/android/gms/internal/zzgy;Lcom/google/android/gms/internal/zzgv;)V

    :cond_1
    return-void
.end method
