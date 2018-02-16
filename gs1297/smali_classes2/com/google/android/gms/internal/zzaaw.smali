.class public Lcom/google/android/gms/internal/zzaaw;
.super Ljava/lang/Object;


# instance fields
.field protected final zzaBs:Lcom/google/android/gms/internal/zzaax;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/zzaax;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaaw;->zzaBs:Lcom/google/android/gms/internal/zzaax;

    return-void
.end method

.method protected static zzc(Lcom/google/android/gms/internal/zzaav;)Lcom/google/android/gms/internal/zzaax;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaav;->zzwl()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaav;->zzwn()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzabm;->zza(Landroid/support/v4/app/FragmentActivity;)Lcom/google/android/gms/internal/zzabm;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaav;->zzwm()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaay;->zzt(Landroid/app/Activity;)Lcom/google/android/gms/internal/zzaay;

    move-result-object v0

    goto :goto_0
.end method

.method public static zzs(Landroid/app/Activity;)Lcom/google/android/gms/internal/zzaax;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzaav;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzaav;-><init>(Landroid/app/Activity;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaaw;->zzc(Lcom/google/android/gms/internal/zzaav;)Lcom/google/android/gms/internal/zzaax;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaaw;->zzaBs:Lcom/google/android/gms/internal/zzaax;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaax;->zzwo()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    return-void
.end method

.method public onDestroy()V
    .locals 0
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    return-void
.end method

.method public onStart()V
    .locals 0
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    return-void
.end method

.method public onStop()V
    .locals 0
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    return-void
.end method
