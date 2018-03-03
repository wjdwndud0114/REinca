.class public interface abstract Lcom/google/android/gms/games/snapshot/SnapshotContents;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# virtual methods
.method public abstract close()V
.end method

.method public abstract getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
.end method

.method public abstract isClosed()Z
.end method

.method public abstract modifyBytes(I[BII)Z
.end method

.method public abstract readFully()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeBytes([B)Z
.end method

.method public abstract zzzB()Lcom/google/android/gms/drive/zzc;
.end method
