.class public Lcom/google/android/gms/internal/zzall;
.super Ljava/lang/Object;


# static fields
.field public static final zzaOA:Lcom/google/android/gms/drive/metadata/MetadataField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/drive/metadata/MetadataField",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzaOz:Lcom/google/android/gms/drive/metadata/MetadataField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/drive/metadata/MetadataField",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const v2, 0x419ce0

    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/zzg;

    const-string v1, "contentAvailability"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/drive/metadata/internal/zzg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzall;->zzaOz:Lcom/google/android/gms/drive/metadata/MetadataField;

    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/zzb;

    const-string v1, "isPinnable"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/drive/metadata/internal/zzb;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzall;->zzaOA:Lcom/google/android/gms/drive/metadata/MetadataField;

    return-void
.end method
