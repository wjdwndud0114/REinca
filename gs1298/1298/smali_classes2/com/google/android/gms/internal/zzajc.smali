.class public Lcom/google/android/gms/internal/zzajc;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzajc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mVersionCode:I

.field final zzaGv:I

.field final zzaML:Lcom/google/android/gms/drive/events/ChangeEvent;

.field final zzaMM:Lcom/google/android/gms/drive/events/CompletionEvent;

.field final zzaMN:Lcom/google/android/gms/drive/events/zzk;

.field final zzaMO:Lcom/google/android/gms/drive/events/zzb;

.field final zzaMP:Lcom/google/android/gms/drive/events/zzr;

.field final zzaMQ:Lcom/google/android/gms/drive/events/zzn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzajd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzajd;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzajc;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IILcom/google/android/gms/drive/events/ChangeEvent;Lcom/google/android/gms/drive/events/CompletionEvent;Lcom/google/android/gms/drive/events/zzk;Lcom/google/android/gms/drive/events/zzb;Lcom/google/android/gms/drive/events/zzr;Lcom/google/android/gms/drive/events/zzn;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzajc;->mVersionCode:I

    iput p2, p0, Lcom/google/android/gms/internal/zzajc;->zzaGv:I

    iput-object p3, p0, Lcom/google/android/gms/internal/zzajc;->zzaML:Lcom/google/android/gms/drive/events/ChangeEvent;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzajc;->zzaMM:Lcom/google/android/gms/drive/events/CompletionEvent;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzajc;->zzaMN:Lcom/google/android/gms/drive/events/zzk;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzajc;->zzaMO:Lcom/google/android/gms/drive/events/zzb;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzajc;->zzaMP:Lcom/google/android/gms/drive/events/zzr;

    iput-object p8, p0, Lcom/google/android/gms/internal/zzajc;->zzaMQ:Lcom/google/android/gms/drive/events/zzn;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzajd;->zza(Lcom/google/android/gms/internal/zzajc;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzAt()Lcom/google/android/gms/drive/events/DriveEvent;
    .locals 4

    iget v0, p0, Lcom/google/android/gms/internal/zzajc;->zzaGv:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    iget v1, p0, Lcom/google/android/gms/internal/zzajc;->zzaGv:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x21

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unexpected event type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzajc;->zzaML:Lcom/google/android/gms/drive/events/ChangeEvent;

    :goto_0
    return-object v0

    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzajc;->zzaMM:Lcom/google/android/gms/drive/events/CompletionEvent;

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzajc;->zzaMN:Lcom/google/android/gms/drive/events/zzk;

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzajc;->zzaMO:Lcom/google/android/gms/drive/events/zzb;

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzajc;->zzaMP:Lcom/google/android/gms/drive/events/zzr;

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/google/android/gms/internal/zzajc;->zzaMQ:Lcom/google/android/gms/drive/events/zzn;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
