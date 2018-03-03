.class public Lcom/google/android/gms/internal/zzahv;
.super Lcom/google/android/gms/internal/zzaim$zza;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzahv$zza;
    }
.end annotation


# instance fields
.field private final zzaGv:I

.field private final zzaMi:Lcom/google/android/gms/drive/events/zzh;

.field private final zzaMj:Lcom/google/android/gms/internal/zzahv$zza;

.field private final zzaMk:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;ILcom/google/android/gms/drive/events/zzh;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaim$zza;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzahv;->zzaMk:Ljava/util/List;

    iput p3, p0, Lcom/google/android/gms/internal/zzahv;->zzaGv:I

    iput-object p4, p0, Lcom/google/android/gms/internal/zzahv;->zzaMi:Lcom/google/android/gms/drive/events/zzh;

    new-instance v0, Lcom/google/android/gms/internal/zzahv$zza;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/gms/internal/zzahv$zza;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/google/android/gms/internal/zzahv$1;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzahv;->zzaMj:Lcom/google/android/gms/internal/zzahv$zza;

    return-void
.end method


# virtual methods
.method public zzc(Lcom/google/android/gms/internal/zzajc;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzajc;->zzAt()Lcom/google/android/gms/drive/events/DriveEvent;

    move-result-object v1

    iget v0, p0, Lcom/google/android/gms/internal/zzahv;->zzaGv:I

    invoke-interface {v1}, Lcom/google/android/gms/drive/events/DriveEvent;->getType()I

    move-result v2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzar(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzahv;->zzaMk:Ljava/util/List;

    invoke-interface {v1}, Lcom/google/android/gms/drive/events/DriveEvent;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzar(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzahv;->zzaMj:Lcom/google/android/gms/internal/zzahv$zza;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzahv;->zzaMi:Lcom/google/android/gms/drive/events/zzh;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/zzahv$zza;->zza(Lcom/google/android/gms/drive/events/zzh;Lcom/google/android/gms/drive/events/DriveEvent;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzeH(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzahv;->zzaMk:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public zzeI(I)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzahv;->zzaMk:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
