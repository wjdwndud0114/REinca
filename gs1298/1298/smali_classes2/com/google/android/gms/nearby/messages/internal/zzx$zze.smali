.class Lcom/google/android/gms/nearby/messages/internal/zzx$zze;
.super Lcom/google/android/gms/nearby/messages/internal/zzp$zza;

# interfaces
.implements Lcom/google/android/gms/nearby/messages/internal/zzx$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/nearby/messages/internal/zzx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zze"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/nearby/messages/internal/zzp$zza;",
        "Lcom/google/android/gms/nearby/messages/internal/zzx$zza",
        "<",
        "Lcom/google/android/gms/nearby/messages/PublishCallback;",
        ">;"
    }
.end annotation


# static fields
.field private static final zzbyL:Lcom/google/android/gms/nearby/messages/internal/zzx$zzd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/nearby/messages/internal/zzx$zzd",
            "<",
            "Lcom/google/android/gms/nearby/messages/PublishCallback;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzbyM:Lcom/google/android/gms/internal/zzaaz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzaaz",
            "<",
            "Lcom/google/android/gms/nearby/messages/PublishCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/nearby/messages/internal/zzx$zze$1;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/messages/internal/zzx$zze$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/nearby/messages/internal/zzx$zze;->zzbyL:Lcom/google/android/gms/nearby/messages/internal/zzx$zzd;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/zzaaz;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaaz",
            "<",
            "Lcom/google/android/gms/nearby/messages/PublishCallback;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/nearby/messages/internal/zzp$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/nearby/messages/internal/zzx$zze;->zzbyM:Lcom/google/android/gms/internal/zzaaz;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzaaz;Lcom/google/android/gms/nearby/messages/internal/zzx$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/nearby/messages/internal/zzx$zze;-><init>(Lcom/google/android/gms/internal/zzaaz;)V

    return-void
.end method

.method private static zzm(Lcom/google/android/gms/internal/zzaaz;)Lcom/google/android/gms/nearby/messages/internal/zzx$zze;
    .locals 1
    .param p0    # Lcom/google/android/gms/internal/zzaaz;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaaz",
            "<",
            "Lcom/google/android/gms/nearby/messages/PublishCallback;",
            ">;)",
            "Lcom/google/android/gms/nearby/messages/internal/zzx$zze;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/nearby/messages/internal/zzx$zze;

    invoke-direct {v0, p0}, Lcom/google/android/gms/nearby/messages/internal/zzx$zze;-><init>(Lcom/google/android/gms/internal/zzaaz;)V

    goto :goto_0
.end method

.method static synthetic zzn(Lcom/google/android/gms/internal/zzaaz;)Lcom/google/android/gms/nearby/messages/internal/zzx$zze;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/nearby/messages/internal/zzx$zze;->zzm(Lcom/google/android/gms/internal/zzaaz;)Lcom/google/android/gms/nearby/messages/internal/zzx$zze;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onExpired()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzx$zze;->zzbyM:Lcom/google/android/gms/internal/zzaaz;

    sget-object v1, Lcom/google/android/gms/nearby/messages/internal/zzx$zze;->zzbyL:Lcom/google/android/gms/nearby/messages/internal/zzx$zzd;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaaz;->zza(Lcom/google/android/gms/internal/zzaaz$zzc;)V

    return-void
.end method

.method public zzNl()Lcom/google/android/gms/internal/zzaaz;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/zzaaz",
            "<",
            "Lcom/google/android/gms/nearby/messages/PublishCallback;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzx$zze;->zzbyM:Lcom/google/android/gms/internal/zzaaz;

    return-object v0
.end method
