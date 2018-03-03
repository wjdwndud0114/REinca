.class public Lcom/facebook/login/CustomTabLoginMethodHandler;
.super Lcom/facebook/login/WebLoginMethodHandler;
.source "CustomTabLoginMethodHandler.java"


# static fields
.field private static final CHROME_PACKAGE:Ljava/lang/String; = "com.android.chrome"

.field private static final CHROME_PACKAGES:[Ljava/lang/String;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/login/CustomTabLoginMethodHandler;",
            ">;"
        }
    .end annotation
.end field

.field private static final CUSTOM_TABS_SERVICE_ACTION:Ljava/lang/String; = "android.support.customtabs.action.CustomTabsService"

.field private static final OAUTH_DIALOG:Ljava/lang/String; = "oauth"


# instance fields
.field private currentPackage:Ljava/lang/String;

.field private customTab:Lcom/facebook/internal/CustomTab;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 52
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.android.chrome"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.chrome.beta"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.chrome.dev"

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/login/CustomTabLoginMethodHandler;->CHROME_PACKAGES:[Ljava/lang/String;

    .line 153
    new-instance v0, Lcom/facebook/login/CustomTabLoginMethodHandler$1;

    invoke-direct {v0}, Lcom/facebook/login/CustomTabLoginMethodHandler$1;-><init>()V

    sput-object v0, Lcom/facebook/login/CustomTabLoginMethodHandler;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/facebook/login/WebLoginMethodHandler;-><init>(Landroid/os/Parcel;)V

    .line 146
    return-void
.end method

.method constructor <init>(Lcom/facebook/login/LoginClient;)V
    .locals 0
    .param p1, "loginClient"    # Lcom/facebook/login/LoginClient;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/facebook/login/WebLoginMethodHandler;-><init>(Lcom/facebook/login/LoginClient;)V

    .line 63
    return-void
.end method

.method private getChromePackage()Ljava/lang/String;
    .locals 8

    .prologue
    .line 118
    iget-object v6, p0, Lcom/facebook/login/CustomTabLoginMethodHandler;->currentPackage:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 119
    iget-object v6, p0, Lcom/facebook/login/CustomTabLoginMethodHandler;->currentPackage:Ljava/lang/String;

    .line 135
    :goto_0
    return-object v6

    .line 121
    :cond_0
    iget-object v6, p0, Lcom/facebook/login/CustomTabLoginMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    invoke-virtual {v6}, Lcom/facebook/login/LoginClient;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 122
    .local v1, "context":Landroid/content/Context;
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.support.customtabs.action.CustomTabsService"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 124
    .local v5, "serviceIntent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 125
    .local v3, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v3, :cond_2

    .line 126
    new-instance v0, Ljava/util/HashSet;

    sget-object v6, Lcom/facebook/login/CustomTabLoginMethodHandler;->CHROME_PACKAGES:[Ljava/lang/String;

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 127
    .local v0, "chromePackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 128
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 129
    .local v4, "serviceInfo":Landroid/content/pm/ServiceInfo;
    if-eqz v4, :cond_1

    iget-object v7, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 130
    iget-object v6, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iput-object v6, p0, Lcom/facebook/login/CustomTabLoginMethodHandler;->currentPackage:Ljava/lang/String;

    .line 131
    iget-object v6, p0, Lcom/facebook/login/CustomTabLoginMethodHandler;->currentPackage:Ljava/lang/String;

    goto :goto_0

    .line 135
    .end local v0    # "chromePackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v4    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private isCustomTabsAllowed()Z
    .locals 1

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/facebook/login/CustomTabLoginMethodHandler;->isCustomTabsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    invoke-direct {p0}, Lcom/facebook/login/CustomTabLoginMethodHandler;->getChromePackage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 108
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/Validate;->hasCustomTabRedirectActivity(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCustomTabsEnabled()Z
    .locals 3

    .prologue
    .line 112
    iget-object v2, p0, Lcom/facebook/login/CustomTabLoginMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    invoke-virtual {v2}, Lcom/facebook/login/LoginClient;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/internal/Utility;->getMetadataApplicationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "appId":Ljava/lang/String;
    invoke-static {v0}, Lcom/facebook/internal/Utility;->getAppSettingsWithoutQuery(Ljava/lang/String;)Lcom/facebook/internal/Utility$FetchedAppSettings;

    move-result-object v1

    .line 114
    .local v1, "settings":Lcom/facebook/internal/Utility$FetchedAppSettings;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/facebook/internal/Utility$FetchedAppSettings;->getCustomTabsEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method getNameForLogging()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    const-string v0, "custom_tab"

    return-object v0
.end method

.method protected getSSODevice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    const-string v0, "chrome_custom_tab"

    return-object v0
.end method

.method getTokenSource()Lcom/facebook/AccessTokenSource;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/facebook/AccessTokenSource;->CHROME_CUSTOM_TAB:Lcom/facebook/AccessTokenSource;

    return-object v0
.end method

.method protected putChallengeParam(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "param"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lcom/facebook/login/CustomTabLoginMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    invoke-virtual {v0}, Lcom/facebook/login/LoginClient;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/facebook/login/LoginFragment;

    if-eqz v0, :cond_0

    .line 100
    const-string v1, "7_challenge"

    iget-object v0, p0, Lcom/facebook/login/CustomTabLoginMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    .line 101
    invoke-virtual {v0}, Lcom/facebook/login/LoginClient;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/facebook/login/LoginFragment;

    invoke-virtual {v0}, Lcom/facebook/login/LoginFragment;->getChallengeParam()Ljava/lang/String;

    move-result-object v0

    .line 100
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 103
    :cond_0
    return-void
.end method

.method tryAuthorize(Lcom/facebook/login/LoginClient$Request;)Z
    .locals 4
    .param p1, "request"    # Lcom/facebook/login/LoginClient$Request;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/facebook/login/CustomTabLoginMethodHandler;->isCustomTabsAllowed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 83
    const/4 v2, 0x0

    .line 94
    :goto_0
    return v2

    .line 86
    :cond_0
    invoke-virtual {p0, p1}, Lcom/facebook/login/CustomTabLoginMethodHandler;->getParameters(Lcom/facebook/login/LoginClient$Request;)Landroid/os/Bundle;

    move-result-object v1

    .line 87
    .local v1, "parameters":Landroid/os/Bundle;
    invoke-virtual {p0, v1, p1}, Lcom/facebook/login/CustomTabLoginMethodHandler;->addExtraParameters(Landroid/os/Bundle;Lcom/facebook/login/LoginClient$Request;)Landroid/os/Bundle;

    move-result-object v1

    .line 88
    iget-object v2, p0, Lcom/facebook/login/CustomTabLoginMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    invoke-virtual {v2}, Lcom/facebook/login/LoginClient;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 90
    .local v0, "activity":Landroid/app/Activity;
    new-instance v2, Lcom/facebook/internal/CustomTab;

    const-string v3, "oauth"

    invoke-direct {v2, v3, v1}, Lcom/facebook/internal/CustomTab;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    iput-object v2, p0, Lcom/facebook/login/CustomTabLoginMethodHandler;->customTab:Lcom/facebook/internal/CustomTab;

    .line 92
    iget-object v2, p0, Lcom/facebook/login/CustomTabLoginMethodHandler;->customTab:Lcom/facebook/internal/CustomTab;

    invoke-direct {p0}, Lcom/facebook/login/CustomTabLoginMethodHandler;->getChromePackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/facebook/internal/CustomTab;->openCustomTab(Landroid/app/Activity;Ljava/lang/String;)V

    .line 94
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 150
    invoke-super {p0, p1, p2}, Lcom/facebook/login/WebLoginMethodHandler;->writeToParcel(Landroid/os/Parcel;I)V

    .line 151
    return-void
.end method
