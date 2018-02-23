.class public Lcom/google/android/gms/games/internal/PopupManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;,
        Lcom/google/android/gms/games/internal/PopupManager$PopupManagerHCMR1;
    }
.end annotation


# instance fields
.field protected zzbaG:Lcom/google/android/gms/games/internal/GamesClientImpl;

.field protected zzbaH:Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/games/internal/GamesClientImpl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/PopupManager;->zzbaG:Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p2}, Lcom/google/android/gms/games/internal/PopupManager;->zziB(I)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/games/internal/GamesClientImpl;ILcom/google/android/gms/games/internal/PopupManager$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/games/internal/PopupManager;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;I)V

    return-void
.end method

.method public static zza(Lcom/google/android/gms/games/internal/GamesClientImpl;I)Lcom/google/android/gms/games/internal/PopupManager;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/common/util/zzs;->zzyy()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/games/internal/PopupManager$PopupManagerHCMR1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/games/internal/PopupManager$PopupManagerHCMR1;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;I)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/games/internal/PopupManager;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/games/internal/PopupManager;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;I)V

    goto :goto_0
.end method


# virtual methods
.method public setGravity(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/PopupManager;->zzbaH:Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;

    iput p1, v0, Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;->gravity:I

    return-void
.end method

.method public zzEN()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/games/internal/PopupManager;->zzbaG:Lcom/google/android/gms/games/internal/GamesClientImpl;

    iget-object v1, p0, Lcom/google/android/gms/games/internal/PopupManager;->zzbaH:Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;

    iget-object v1, v1, Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;->zzbaI:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/google/android/gms/games/internal/PopupManager;->zzbaH:Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;

    invoke-virtual {v2}, Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;->zzEM()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zza(Landroid/os/IBinder;Landroid/os/Bundle;)V

    return-void
.end method

.method public zzEO()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/PopupManager;->zzbaH:Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;

    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;->zzEM()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public zzEP()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/PopupManager;->zzbaH:Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;->zzbaI:Landroid/os/IBinder;

    return-object v0
.end method

.method public zzEQ()Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/PopupManager;->zzbaH:Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;

    return-object v0
.end method

.method protected zziB(I)V
    .locals 3

    new-instance v0, Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;

    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;-><init>(ILandroid/os/IBinder;Lcom/google/android/gms/games/internal/PopupManager$1;)V

    iput-object v0, p0, Lcom/google/android/gms/games/internal/PopupManager;->zzbaH:Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;

    return-void
.end method

.method public zzw(Landroid/view/View;)V
    .locals 0

    return-void
.end method
