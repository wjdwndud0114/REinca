.class Lcom/google/android/gms/internal/zzki$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzki;->execute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzLp:Lcom/google/android/gms/internal/zzki;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzki;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzki$1;->zzLp:Lcom/google/android/gms/internal/zzki;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzki$1;->zzLp:Lcom/google/android/gms/internal/zzki;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzki;->createIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzcJ()Lcom/google/android/gms/internal/zzpi;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzki$1;->zzLp:Lcom/google/android/gms/internal/zzki;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzki;->zza(Lcom/google/android/gms/internal/zzki;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzpi;->zzb(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
