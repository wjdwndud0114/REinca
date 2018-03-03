.class public Lcom/tapjoy/TJPlacementData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Ljava/lang/String;

.field private h:I

.field private i:Z

.field private j:Ljava/lang/String;

.field private k:Z

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Z

.field private o:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/TJPlacementData;->n:Z

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/TJPlacementData;->o:Z

    .line 39
    invoke-virtual {p0, p1}, Lcom/tapjoy/TJPlacementData;->setKey(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0, p2}, Lcom/tapjoy/TJPlacementData;->updateUrl(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "baseUrl"    # Ljava/lang/String;
    .param p2, "httpResponse"    # Ljava/lang/String;
    .param p3, "callbackID"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/TJPlacementData;->n:Z

    .line 36
    iput-boolean v1, p0, Lcom/tapjoy/TJPlacementData;->o:Z

    .line 44
    invoke-virtual {p0, p1}, Lcom/tapjoy/TJPlacementData;->setBaseURL(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0, p2}, Lcom/tapjoy/TJPlacementData;->setHttpResponse(Ljava/lang/String;)V

    .line 1074
    iput-object p3, p0, Lcom/tapjoy/TJPlacementData;->l:Ljava/lang/String;

    .line 1075
    iput-boolean v1, p0, Lcom/tapjoy/TJPlacementData;->n:Z

    .line 47
    return-void
.end method


# virtual methods
.method public getBaseURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/tapjoy/TJPlacementData;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getCallbackID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/tapjoy/TJPlacementData;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getContentViewId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/tapjoy/TJPlacementData;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpResponse()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/tapjoy/TJPlacementData;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpStatusCode()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/tapjoy/TJPlacementData;->f:I

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/tapjoy/TJPlacementData;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getMediationURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/tapjoy/TJPlacementData;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getPlacementName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/tapjoy/TJPlacementData;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getRedirectURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/tapjoy/TJPlacementData;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/tapjoy/TJPlacementData;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getViewType()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/tapjoy/TJPlacementData;->h:I

    return v0
.end method

.method public hasProgressSpinner()Z
    .locals 1

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/tapjoy/TJPlacementData;->i:Z

    return v0
.end method

.method public isBaseActivity()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/tapjoy/TJPlacementData;->n:Z

    return v0
.end method

.method public isPreloadDisabled()Z
    .locals 1

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/tapjoy/TJPlacementData;->o:Z

    return v0
.end method

.method public isPrerenderingRequested()Z
    .locals 1

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/tapjoy/TJPlacementData;->k:Z

    return v0
.end method

.method public resetPlacementRequestData()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 53
    invoke-virtual {p0, v1}, Lcom/tapjoy/TJPlacementData;->setHttpResponse(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0, v0}, Lcom/tapjoy/TJPlacementData;->setHttpStatusCode(I)V

    .line 55
    invoke-virtual {p0, v1}, Lcom/tapjoy/TJPlacementData;->setRedirectURL(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0, v0}, Lcom/tapjoy/TJPlacementData;->setHasProgressSpinner(Z)V

    .line 57
    invoke-virtual {p0, v0}, Lcom/tapjoy/TJPlacementData;->setPrerenderingRequested(Z)V

    .line 58
    invoke-virtual {p0, v0}, Lcom/tapjoy/TJPlacementData;->setPreloadDisabled(Z)V

    .line 59
    invoke-virtual {p0, v1}, Lcom/tapjoy/TJPlacementData;->setContentViewId(Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public setBaseURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "baseURL"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/tapjoy/TJPlacementData;->c:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setContentViewId(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentViewId"    # Ljava/lang/String;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/tapjoy/TJPlacementData;->m:Ljava/lang/String;

    return-void
.end method

.method public setHasProgressSpinner(Z)V
    .locals 0
    .param p1, "hasProgressSpinner"    # Z

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/tapjoy/TJPlacementData;->i:Z

    .line 118
    return-void
.end method

.method public setHttpResponse(Ljava/lang/String;)V
    .locals 0
    .param p1, "httpResponse"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/tapjoy/TJPlacementData;->e:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setHttpStatusCode(I)V
    .locals 0
    .param p1, "httpStatusCode"    # I

    .prologue
    .line 101
    iput p1, p0, Lcom/tapjoy/TJPlacementData;->f:I

    .line 102
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/tapjoy/TJPlacementData;->a:Ljava/lang/String;

    return-void
.end method

.method public setMediationURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "mediationURL"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/tapjoy/TJPlacementData;->d:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setPlacementName(Ljava/lang/String;)V
    .locals 0
    .param p1, "placementName"    # Ljava/lang/String;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/tapjoy/TJPlacementData;->g:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setPreloadDisabled(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 163
    iput-boolean p1, p0, Lcom/tapjoy/TJPlacementData;->o:Z

    .line 164
    return-void
.end method

.method public setPrerenderingRequested(Z)V
    .locals 0
    .param p1, "prerenderingRequested"    # Z

    .prologue
    .line 179
    iput-boolean p1, p0, Lcom/tapjoy/TJPlacementData;->k:Z

    .line 180
    return-void
.end method

.method public setRedirectURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "redirectURL"    # Ljava/lang/String;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/tapjoy/TJPlacementData;->j:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setViewType(I)V
    .locals 0
    .param p1, "viewType"    # I

    .prologue
    .line 109
    iput p1, p0, Lcom/tapjoy/TJPlacementData;->h:I

    .line 110
    return-void
.end method

.method public updateUrl(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 63
    .line 1083
    iput-object p1, p0, Lcom/tapjoy/TJPlacementData;->b:Ljava/lang/String;

    .line 64
    invoke-static {p1}, Lcom/tapjoy/internal/ct;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    const/4 v0, 0x0

    const/16 v1, 0x2f

    const-string v2, "//"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tapjoy/TJPlacementData;->setBaseURL(Ljava/lang/String;)V

    .line 67
    :cond_0
    return-void
.end method
