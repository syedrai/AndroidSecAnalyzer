.class final Lcom/afwsamples/testdpc/ShellCommand;
.super Ljava/lang/Object;
.source "ShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/afwsamples/testdpc/ShellCommand$KeyValue;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TestDPCShellCommand"


# instance fields
.field private final mArgs:[Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

.field private mHandler:Landroid/os/Handler;

.field private final mWriter:Ljava/io/PrintWriter;


# direct methods
.method public static synthetic $r8$lambda$-RI2r9cHF83aPDe7dPAXMtL4DqQ(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$clearDeviceOwner$1(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$-hGGlbSAkYOXfI64rShbvRgWVYw(Lcom/afwsamples/testdpc/ShellCommand;)V
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/ShellCommand;->clearOrganizationName()V

    return-void
.end method

.method public static synthetic $r8$lambda$-kcu2ABockZCRXQbTIGMG4WgfzE(Lcom/afwsamples/testdpc/ShellCommand;)V
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/ShellCommand;->getKeyguardDisabledFeatures()V

    return-void
.end method

.method public static synthetic $r8$lambda$03FR-QE-UFfm_J8pNeIx_s2HSgI(Lcom/afwsamples/testdpc/ShellCommand;)V
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/ShellCommand;->retrievePreRebootSecurityLogs()V

    return-void
.end method

.method public static synthetic $r8$lambda$0GyJrlIdNEXQglgiCTpHzA19aJw(Lcom/afwsamples/testdpc/ShellCommand;)V
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/ShellCommand;->clearDeviceOwnerLockScreenInfo()V

    return-void
.end method

.method public static synthetic $r8$lambda$1-B6zXAWxl1kVmRxPlnAr3HsIqc(Lcom/afwsamples/testdpc/ShellCommand;)V
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/ShellCommand;->listUserRestrictions()V

    return-void
.end method

.method public static synthetic $r8$lambda$1bBhzNq4-H8pofhq8iQkJJKGpic(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$transferOwnership$0(Ljava/lang/String;Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic $r8$lambda$1oB1A2KHlOMHn3CgV1soq8kN5FA(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/ShellCommand;->hasKeyPair(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$1zuNd77PUb6FAkPCE61CIyiVkkw(Lcom/afwsamples/testdpc/ShellCommand;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/ShellCommand;->isLockTaskPermitted([Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$29J3-kmt5ChKHUDz6PvuDbrwens(Lcom/afwsamples/testdpc/ShellCommand;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/ShellCommand;->setKeyguardDisabledFeatures(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$2ANQXM7yPH4SQOMGNCoR_lgwvug(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$wipeData$0(Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2DaGj3W6Bgr8BGYVTl2MApNanSw(Lcom/afwsamples/testdpc/ShellCommand;)V
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/ShellCommand;->canUsbDataSignalingBeDisabled()V

    return-void
.end method

.method public static synthetic $r8$lambda$39TiKNcRTM2zfN0cy8C6AcJcVD8(Lcom/afwsamples/testdpc/ShellCommand;Landroid/os/UserHandle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/ShellCommand;->removeUser(Landroid/os/UserHandle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$39aHMGcblZ1RIBJm2KZ4HoywejU(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$setEndUserSessionMessage$0(Ljava/lang/String;Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3FLDXxD-hG3kZxtDFrxHVsyBcR8(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$printCollection$0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3SZkgaM1pd6PWkDH2GctvrJ2n9w(Lcom/afwsamples/testdpc/ShellCommand;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/ShellCommand;->setPersonalAppsSuspended(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$3SvWAnvEKk6VesdkaSuLd-48lkA(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;ILjava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$setPasswordQuality$0(Ljava/lang/String;ILjava/lang/Void;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3YgIp2NpVbPta7HOTy2teBas3Go(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;ZLjava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$setUserRestriction$1(Ljava/lang/String;ZLjava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4PuiKXpF80IjAb7qXfmCc0HLiSA(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$transferOwnership$1(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4RSKMcVzzzSThDxfMkIRd0jkWsM(Lcom/afwsamples/testdpc/ShellCommand;)V
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/ShellCommand;->isActivePasswordSufficient()V

    return-void
.end method

.method public static synthetic $r8$lambda$4Z4c4WaAYvjzTgMt2a8OMIktXb0(Lcom/afwsamples/testdpc/ShellCommand;ZLjava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$setCameraDisabled$0(ZLjava/lang/Void;)V

    return-void
.end method

.method public static synthetic $r8$lambda$55DoQoaNYSIaRDnd3XT1vImyQO0(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand;->setUninstallBlocked(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$5I0ncVouRYTkGctm2mWQL5TQvMw(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$setGlobalSetting$0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5R_9Ziry0VrGWGlZSMzTZ12ymTU(Lcom/afwsamples/testdpc/ShellCommand;)V
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/ShellCommand;->listDisabledSystemApps()V

    return-void
.end method

.method public static synthetic $r8$lambda$5Y7ATzRenRxyRkME1seJyAyBlgg(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$setPermissionGrantState$0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5Yyw-gd-Jh94HZNxgMWnLHoW3Pk(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$setPermissionGrantState$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5l58GUH9ixVJSj23gbwPq-5gzDA(Lcom/afwsamples/testdpc/ShellCommand;)V
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/ShellCommand;->retrieveSecurityLogs()V

    return-void
.end method

.method public static synthetic $r8$lambda$5o66aPUpIhb76PmkRSoWbSxw2Jg(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$installExistingPackage$0(Ljava/lang/String;Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic $r8$lambda$64tgXi9ZNHbbTG7teo3cjveAxns(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand;->setUserRestriction(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$6AWNtY8JYtSPM9Yqtd3unJBOohE(Lcom/afwsamples/testdpc/ShellCommand;Landroid/os/UserHandle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$listForegroundUsers$0(Landroid/os/UserHandle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6Vf2JMhLyTPlTBf04Du37yti_dU(Lcom/afwsamples/testdpc/ShellCommand;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand;->retrieveNetworkLogs(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$7-xZX3SaI4BzXjm6cZw1Id_ChxI(Lcom/afwsamples/testdpc/ShellCommand;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$setDelegatedScopes$1([Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$89pAM47OtESOKpSvxpE4FhCYqPs(Lcom/afwsamples/testdpc/ShellCommand;)V
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/ShellCommand;->reboot()V

    return-void
.end method

.method public static synthetic $r8$lambda$8BPr54mp_wQFvPpDXpnaQ5vTuDQ(Lcom/afwsamples/testdpc/ShellCommand;ZLjava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$setLogoutEnabled$1(ZLjava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8oa1_ZjGjYgXrO1-xpJv0ssXZPU(Lcom/afwsamples/testdpc/ShellCommand;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/ShellCommand;->setUserIcon(Ljava/io/File;)V

    return-void
.end method

.method public static synthetic $r8$lambda$98nBfZvpUy-lPp7PNKZ7DgWfszQ(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$setPersonalAppsSuspended$0(Ljava/lang/String;Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AIMBdiiPXRbjqh02Fvy8ts_7WCk(Lcom/afwsamples/testdpc/ShellCommand;Z[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand;->setSuspendedPackages(Z[Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AOnicntL1BKzd63cYlrOUf4NYJk(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/ShellCommand;->isHiddenPackage(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AU9TolaGQq-IXji-9wT8wtNuFUQ(Lcom/afwsamples/testdpc/ShellCommand;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/ShellCommand;->isSuspendedPackage([Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AYCKIoJhV_0QmJgUpVZrg-fN4n4(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand;->grantKeyPairToApp(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AoSJ89FqvXh2F_zEEoiUwUFNufM(Lcom/afwsamples/testdpc/ShellCommand;)V
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/ShellCommand;->requestBugreport()V

    return-void
.end method

.method public static synthetic $r8$lambda$Ay5_UTvzVNd2caVmdHyKEU4F-KQ(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$setStartUserSessionMessage$1(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BSHwMPb3h3Amc6PejpfxxGE7_eo(Lcom/afwsamples/testdpc/ShellCommand;)V
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/ShellCommand;->clearPassword()V

    return-void
.end method

.method public static synthetic $r8$lambda$ByMNT7-ZLANFGFQQMz4h5IhUiRA(Lcom/afwsamples/testdpc/ShellCommand;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/ShellCommand;->setLocationEnabled(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$C-NYA8crva6h9lacNnBQPUyoDb4(Lcom/afwsamples/testdpc/ShellCommand;ZLjava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$setSecurityLoggingEnabled$1(ZLjava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CFIUdj7V5HhgiPnfVPUVQIJ-INM(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$generateDeviceAttestationKeyPair$0(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$CPSlGsueb4M1XmOtaSdtzeez1q8(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$setPersonalAppsSuspended$1(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CQhjgscXHsiujb7aptr3TCUyNdg(Lcom/afwsamples/testdpc/ShellCommand;Landroid/os/UserHandle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/ShellCommand;->switchUser(Landroid/os/UserHandle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Cm-OJuu20A9QB3dgsAwkduICGYg(Lcom/afwsamples/testdpc/ShellCommand;)V
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/ShellCommand;->isNetworkLoggingEnabled()V

    return-void
.end method

.method public static synthetic $r8$lambda$CuTonwitBdx2yiDsy1dkroZpBfo(Lcom/afwsamples/testdpc/ShellCommand;)V
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/ShellCommand;->listForegroundUsers()V

    return-void
.end method

.method public static synthetic $r8$lambda$D6AIoF0U2A8vn59IrXuzfmdQZJw(Lcom/afwsamples/testdpc/ShellCommand;Landroid/os/UserHandle;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$switchUser$0(Landroid/os/UserHandle;Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DoU99YTLS-0xjNSI0ZXhGHbma9Y(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;ZLjava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$setUserRestrictionOnParent$0(Ljava/lang/String;ZLjava/lang/Void;)V

    return-void
.end method

.method public static synthetic $r8$lambda$E8IR2oV-uI4Qn6Mz__76lQxHu_w(Lcom/afwsamples/testdpc/ShellCommand;Landroid/os/UserHandle;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$startUserInBackground$0(Landroid/os/UserHandle;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EBfD0wswlGhKBxNXVQhWhS9td1Y(Lcom/afwsamples/testdpc/ShellCommand;)V
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/ShellCommand;->getLastBugReportRequestTime()V

    return-void
.end method

.method public static synthetic $r8$lambda$EE8cw5F6b8ofV6LwwBqQ5amIg_Q(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/ShellCommand;->isUninstallBlocked(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EPkCVU86bta1qJs_6k3mzZubNlo(Lcom/afwsamples/testdpc/ShellCommand;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/ShellCommand;->setKeyguardDisabled(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$ETf4ZqTGyCvkt_WzYP7PuPiGgj8(Lcom/afwsamples/testdpc/ShellCommand;)V
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/ShellCommand;->canAdminGrantSensorsPermissions()V

    return-void
.end method

.method public static synthetic $r8$lambda$EhhzwSkvtpSOrc-rYKLi7MSa7f0(Lcom/afwsamples/testdpc/ShellCommand;)V
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/ShellCommand;->logoutUser()V

    return-void
.end method

.method public static synthetic $r8$lambda$FEuBXToFrrLbLhNpof_PyZlj87o(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$reboot$0(Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FMTHGp1QpaQaTkJLm0oONbo-umM(Lcom/afwsamples/testdpc/ShellCommand;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$setMeteredDataDisabledPackages$0(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FwXr2v73F5zPMIHfQSGNgYBY_NU(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand;->setUserRestrictionOnParent(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$G75j5nQw6orUXKn-_JqVPP1sda8(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$reboot$1(Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GAozEQq_WnpnQ1lqr2XXlITnoVY(Lcom/afwsamples/testdpc/ShellCommand;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/ShellCommand;->setCameraDisabled(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$GCjkOImpYnNdY3kS68pVTErpC0w(Lcom/afwsamples/testdpc/ShellCommand;Landroid/os/UserHandle;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$startUserInBackground$1(Landroid/os/UserHandle;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GHplkcgL7fukJ1ZCX9UPXtzhhOc(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/ShellCommand;->setOrganizationName(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GNXrmDnRl66g0a9wz2J4bGEJMJE(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$clearProfileOwner$0(Ljava/lang/String;Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Gid-tiFw4AOzTYj3VfMgOmsO1Nc(Lcom/afwsamples/testdpc/ShellCommand;Landroid/os/UserHandle;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$switchUser$1(Landroid/os/UserHandle;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GoVWcXgFFoydONe9jrlnn-G5vQ0(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand;->getPermissionGrantState(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HJ1KClf_99LcQOzayU_FibixrCo(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/ShellCommand;->getDelegatePackages(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HP4_y3pSWljAgocslTvAHUVzK7I(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/ShellCommand;->setPassword(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HWb78S0J12xskq95vyeZXUKLwn8(Lcom/afwsamples/testdpc/ShellCommand;Landroid/os/UserHandle;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$logoutUser$1(Landroid/os/UserHandle;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Hv7F2dVTv9jG1vZ0Db4ksVynedM(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$revokeKeyPairFromApp$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IDvpSxZVTQZQZ9x2jTlSB3aH2eo(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$requestBugreport$0(Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic $r8$lambda$J-HlEUqUetw2BKiPOlUtKFK6NaM(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;ZLjava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$setUserRestrictionOnParent$1(Ljava/lang/String;ZLjava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JCcFynyMfhl6UMtTM8ecUEWRQuo(Lcom/afwsamples/testdpc/ShellCommand;ZLjava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$setUsbDataSignalingEnabled$1(ZLjava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JGxrDg8M2kleAiJZdUQiTyLroh0(Lcom/afwsamples/testdpc/ShellCommand;)V
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/ShellCommand;->clearProfileOwner()V

    return-void
.end method

.method public static synthetic $r8$lambda$JTdXKA8L7KVRSV44RgCYDoNPiUk(Lcom/afwsamples/testdpc/ShellCommand;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/ShellCommand;->setLockTaskPackages([Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JYdj_20tkjmFd-DrhmCJB8HpPA8(Lcom/afwsamples/testdpc/ShellCommand;Landroid/os/UserHandle;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$logoutUser$0(Landroid/os/UserHandle;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JsFu8YVMaAJZ_6Ameec2tKIWsdY(Lcom/afwsamples/testdpc/ShellCommand;)V
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/ShellCommand;->removeActiveAdmin()V

    return-void
.end method

.method public static synthetic $r8$lambda$JuH7lQi70D9fhCCbnBN-plIESvs(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$setOrganizationName$0(Ljava/lang/String;Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic $r8$lambda$K0D-rv-AR_xfqqp9zYmpsJgJZlc(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$setHiddenPackage$0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic $r8$lambda$K6Ewlz1MbtfOikHuhLaxMAGxznU(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/ShellCommand;->getKeyPairGrants(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$K8Ra3lw90iqU0HvOxhN7x6vf6u0(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$lockNow$2(Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KGgwDv63WswKMAMATBDpv6Q-6OU(Lcom/afwsamples/testdpc/ShellCommand;ILjava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$setMaximumFailedPasswordsForWipe$1(ILjava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KbVpCquzyfK1WCF8FUvyvkZVoBs(Lcom/afwsamples/testdpc/ShellCommand;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/ShellCommand;->setMaximumFailedPasswordsForWipe(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ki4saIJqXw7ypXdKGTs3i_8tUzU(Lcom/afwsamples/testdpc/ShellCommand;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/ShellCommand;->setUsbDataSignalingEnabled(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$L7jy1BJm8M8ifqEu0osKl7qZlww(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand;->setHiddenPackage(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$LD16OH569alCe1ePtxuEjWWDvgw(Lcom/afwsamples/testdpc/ShellCommand;Landroid/os/UserHandle;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$getSecondaryUsers$0(Landroid/os/UserHandle;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$LGEhFgygAIe9AiWrQqixpfjLITM(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;ILjava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$setRequiredPasswordComplexity$1(Ljava/lang/String;ILjava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LWdMhi3Ouu1UNNG4Y0I6uVJ2FDA(Lcom/afwsamples/testdpc/ShellCommand;ZLjava/lang/String;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$setUninstallBlocked$0(ZLjava/lang/String;Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Mwya8lDX5EBVza3Na405xFsLgjU(Lcom/afwsamples/testdpc/ShellCommand;Landroid/os/UserHandle;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$stopUser$0(Landroid/os/UserHandle;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MxZXruloLDIOo6JXwTetmnEPt3I(Lcom/afwsamples/testdpc/ShellCommand;)V
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/ShellCommand;->getStartUserSessionMessage()V

    return-void
.end method

.method public static synthetic $r8$lambda$N7hPR6SUMxXPOIP6E1JJfjSYBWQ(Lcom/afwsamples/testdpc/ShellCommand;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/ShellCommand;->wipeData(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$NbX44UQyKW1oUMfjSe27eefKZ9Y(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/ShellCommand;->setEndUserSessionMessage(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NrXj8VaxMqqnKSgxP0BYMRuBddQ(Lcom/afwsamples/testdpc/ShellCommand;ZLjava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$setLocationEnabled$1(ZLjava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$O2Xs2lyFVQmg6YhjaA1S8AmSKUk(Lcom/afwsamples/testdpc/ShellCommand;Landroid/content/ComponentName;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$removeActiveAdmin$0(Landroid/content/ComponentName;Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OIL0NscPbGtJ25BfVntYIjisjWQ(Lcom/afwsamples/testdpc/ShellCommand;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/ShellCommand;->setCrossProfilePackages([Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OuCNgAwkoxrw7yv6iOe24OyK1K4(Lcom/afwsamples/testdpc/ShellCommand;ZLjava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$setNetworkLoggingEnabled$0(ZLjava/lang/Void;)V

    return-void
.end method

.method public static synthetic $r8$lambda$P5KiJDhvXhDWBYN2wURxA06WL0U(Lcom/afwsamples/testdpc/ShellCommand;Landroid/content/ComponentName;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$removeActiveAdmin$1(Landroid/content/ComponentName;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QLxKLqiacHdDqHCmCdis08FIKyk(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/ShellCommand;->setStartUserSessionMessage(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QRhHxY9qO3FN480uYcIonUPCBHE(Lcom/afwsamples/testdpc/ShellCommand;)V
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/ShellCommand;->getEndUserSessionMessage()V

    return-void
.end method

.method public static synthetic $r8$lambda$Q_AOTnUyEhBRtbyKsAWEBLj4ktI(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$enableSystemApp$1(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QkF4tBStrXTWq_RrpJOZ5-ily_k(Lcom/afwsamples/testdpc/ShellCommand;Ljava/util/List;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$setUserControlDisabledPackages$1(Ljava/util/List;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SI9ZyUGxVqRGVaDRCaHgczVWfxA(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$lockNow$1(Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SJwV9HAygnYxv-ydV_gcGTjzuU8(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;ILjava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$setRequiredPasswordComplexity$0(Ljava/lang/String;ILjava/lang/Void;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TgKEopeF_tBuptqG4l8xdLFMsZ4(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$setLockTaskFeatures$0(Ljava/lang/String;Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ts4xTC65JqMCJ6U3QLFqSd7mC_0(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$setAppRestrictions$1(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$U-x2LbZAwC0PAaPdHeN-ZDSbv6A(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$requestBugreport$1(Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$U6rVLzacDnyChFkvg6HmhAJOABI(Lcom/afwsamples/testdpc/ShellCommand;)V
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/ShellCommand;->getLockTaskPackages()V

    return-void
.end method

.method public static synthetic $r8$lambda$UWFftYLKq3mH4z9bO3I_J5HgZgo(Lcom/afwsamples/testdpc/ShellCommand;Landroid/os/UserHandle;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$removeUser$1(Landroid/os/UserHandle;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UpIn4WBjv4sas3v1fBwnITLPYcE(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$Validator;)Lcom/afwsamples/testdpc/util/flags/Flags$Validator$ValidationResult;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$run$0(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$Validator;)Lcom/afwsamples/testdpc/util/flags/Flags$Validator$ValidationResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$UqsC0bNN-3RdX5iBQKHQSR8E6Mw(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$setOrganizationName$1(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VQTQFpdIAemup_IlsxSVJq1JT3c(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$setEndUserSessionMessage$1(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WKle3jnFVOwMuwEJw8zef_icEv0(Lcom/afwsamples/testdpc/ShellCommand;)V
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/ShellCommand;->getPersonalAppsSuspendedReasons()V

    return-void
.end method

.method public static synthetic $r8$lambda$WOy4-DJBXzROyb1in_xPiDMdL78(Lcom/afwsamples/testdpc/ShellCommand;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/ShellCommand;->getAppRestrictions([Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$W_YYWeBAWbBo_vzOhumQTLDY9IE(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;ILjava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$setPasswordQuality$1(Ljava/lang/String;ILjava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WliERQa0Oacfqb6HNecXZyO05Ss(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$grantKeyPairToApp$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Wp4EmXlqYr1Z81n9XvgD0ohOcGU(Lcom/afwsamples/testdpc/ShellCommand;)V
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/ShellCommand;->getLockTaskFeatures()V

    return-void
.end method

.method public static synthetic $r8$lambda$X-xlyzIEw-Q7XOH01FVQvLJ8IoE(Lcom/afwsamples/testdpc/ShellCommand;)V
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/ShellCommand;->getAffiliationIds()V

    return-void
.end method

.method public static synthetic $r8$lambda$YCBKqAt7hL5gt-v-dPk8MqvoGzU(Lcom/afwsamples/testdpc/ShellCommand;)V
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/ShellCommand;->isLogoutEnabled()V

    return-void
.end method

.method public static synthetic $r8$lambda$YMWWyuUiHdRRuxklbggrDRgF3MA(Lcom/afwsamples/testdpc/ShellCommand;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/ShellCommand;->setSecurityLoggingEnabled(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZHb_sLtOfwFE1K2mPdBslNpuTUk(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$setSuspendedPackages$0(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZP_H4B7WYRQ_UdMknOOeIp_PZo8(Lcom/afwsamples/testdpc/ShellCommand;)V
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/ShellCommand;->getPasswordQuality()V

    return-void
.end method

.method public static synthetic $r8$lambda$ZQ-DpR1UFobtSakxgS1K3TdKqLM(Lcom/afwsamples/testdpc/ShellCommand;Landroid/os/UserHandle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/ShellCommand;->startUserInBackground(Landroid/os/UserHandle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZpKX55pxhkv6rjljNqAWEKQLXYg(Lcom/afwsamples/testdpc/ShellCommand;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/ShellCommand;->setMeteredDataDisabledPackages([Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Zz5Ubim59WXRNeGcFpgspLtewsQ(Lcom/afwsamples/testdpc/ShellCommand;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/ShellCommand;->setRequiredPasswordComplexity(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$_9w4TpK8JEursfz7u2tCFDggz-E(Lcom/afwsamples/testdpc/ShellCommand;)V
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/ShellCommand;->dumpState()V

    return-void
.end method

.method public static synthetic $r8$lambda$_UDRzMzUvS1D8cljniaPWKcEs8Y(Lcom/afwsamples/testdpc/ShellCommand;)V
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/ShellCommand;->isForegroundUser()V

    return-void
.end method

.method public static synthetic $r8$lambda$_dwgYTZaxwNQPOrPLegaH8I70PY(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/afwsamples/testdpc/ShellCommand;->setPermissionGrantState(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$_x4kZ3qR_0_qE9_t3jCbiVcPK34(Lcom/afwsamples/testdpc/ShellCommand;ZLjava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$setUsbDataSignalingEnabled$0(ZLjava/lang/Void;)V

    return-void
.end method

.method public static synthetic $r8$lambda$a0mWx3eB8BtkVpwJKs6cfkvzXQA(Lcom/afwsamples/testdpc/ShellCommand;ZLjava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$setKeyguardDisabled$0(ZLjava/lang/Void;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aCwUgNx2GMSLLq2ARNQI703bgE0(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand;->createUser(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$aTESEMh_Pr4glfwaH3R3gJQjf-4(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$setLockTaskFeatures$1(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aimXPgTWzaCLA3wBaRAtARAo1x8(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;[Lcom/afwsamples/testdpc/ShellCommand$KeyValue;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand;->setAppRestrictions(Ljava/lang/String;[Lcom/afwsamples/testdpc/ShellCommand$KeyValue;)V

    return-void
.end method

.method public static synthetic $r8$lambda$awuGU7kyC2sw-_Jm0sgOS7mQW5I(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$enableSystemApp$0(Ljava/lang/String;Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic $r8$lambda$b9M-2OCjKcruPdQnZvTV6bx_YVg(Lcom/afwsamples/testdpc/ShellCommand;)V
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/ShellCommand;->getMeteredDataDisabledPackages()V

    return-void
.end method

.method public static synthetic $r8$lambda$bBuCaD9acZEg7Lsywv3Onj-xqXg(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$setSuspendedPackages$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bQ9KDiVOlPclsLnywxr5v0q27Wo(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$setDeviceOwnerLockScreenInfo$0(Ljava/lang/String;Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bqyRXo1AWHd5Lo70tCXpmbdEGUg(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/ShellCommand;->transferOwnership(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cg_xTZSx7h4QImUmaW0kYn8pLIU(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand;->setGlobalSetting(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dP81pXuB08EUFjMyNi2Dtt9Z6YM(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand;->setSecureSetting(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dUAh_niZ0ulNHHdK_TH8JJsMQPo(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand;->generateDeviceAttestationKeyPair(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$dqpbWrXBORco5pZ8w06oXeRqnxk(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$setStartUserSessionMessage$0(Ljava/lang/String;Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eMw4bADBYL9dii39K_MYjnT1qGg(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$setSecureSetting$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eNiUf3Q4JLimuPMjhW6RfokP4QI(Lcom/afwsamples/testdpc/ShellCommand;)V
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/ShellCommand;->isActivePasswordSufficientForDeviceRequirement()V

    return-void
.end method

.method public static synthetic $r8$lambda$ekL7vhp2XEyREJ96EA4s0BmHuzs(Lcom/afwsamples/testdpc/ShellCommand;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/ShellCommand;->setNetworkLoggingEnabled(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$eunl_Hoso-XP0sXVGF7FL70PEEE(Lcom/afwsamples/testdpc/ShellCommand;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$setAppRestrictions$0(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fA_JzN8Uk7GnQhT2nE1DBIQ_p7Y(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$setDeviceOwnerLockScreenInfo$1(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$faPd38QsSKGHkyAubFcJpq91uJ0(Lcom/afwsamples/testdpc/ShellCommand;)V
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/ShellCommand;->isUserAffiliated()V

    return-void
.end method

.method public static synthetic $r8$lambda$fz_YYPZyzcp71vrfel64SAdGpAk(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/ShellCommand;->setDeviceOwnerLockScreenInfo(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gSoIlhZm1Kz-hJmfYDXG8GmcX2M(Lcom/afwsamples/testdpc/ShellCommand;)V
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/ShellCommand;->getRequiredPasswordComplexity()V

    return-void
.end method

.method public static synthetic $r8$lambda$gW_z4Iq6t04bcwiHEfh0RMDlDVw(Lcom/afwsamples/testdpc/ShellCommand;Landroid/os/UserHandle;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$stopUser$1(Landroid/os/UserHandle;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$g_g5f3VMikM7we_swt-2OlqmkNQ(Lcom/afwsamples/testdpc/ShellCommand;)V
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/ShellCommand;->getDeviceOwnerLockScreenInfo()V

    return-void
.end method

.method public static synthetic $r8$lambda$h17CxotOhk5tUBnEppq-7UsMrPU(Lcom/afwsamples/testdpc/ShellCommand;ILjava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$setMaximumFailedPasswordsForWipe$0(ILjava/lang/Void;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hHLAWXneNSvfvLxiaEvJaXVQD2k(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$removeKeyPair$1(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hIHqd5YPx7Rs7Lgxqn-ceJJa284(Lcom/afwsamples/testdpc/ShellCommand;Ljava/util/List;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$setUserControlDisabledPackages$0(Ljava/util/List;Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hIzzdX2DU89W0plM3ybEi1xaKKo(Lcom/afwsamples/testdpc/ShellCommand;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/ShellCommand;->setLogoutEnabled(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$hPtWXwM9Q42ZP0L06coaRgM-HJE(Lcom/afwsamples/testdpc/ShellCommand;Ljava/util/Set;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$setCrossProfilePackages$0(Ljava/util/Set;Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hWZIm14lg_MbSeVLXlcgUgsze54(Lcom/afwsamples/testdpc/ShellCommand;)V
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/ShellCommand;->getCameraDisabled()V

    return-void
.end method

.method public static synthetic $r8$lambda$hrBEz-b8n0rrYS6mCC_BP-AzkOc(Lcom/afwsamples/testdpc/ShellCommand;ZLjava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$setCameraDisabled$1(ZLjava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hxx5VvASimov7i0MddQ-TcYmaq8(Lcom/afwsamples/testdpc/ShellCommand;Ljava/util/List;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$setMeteredDataDisabledPackages$1(Ljava/util/List;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$i0rC64q17rX4D7YZ_b2Utc_6kfM(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$clearProfileOwner$1(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$i9vEOwRlusHtk4_EFNCWHc4tc8A(Lcom/afwsamples/testdpc/ShellCommand;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/ShellCommand;->setLockTaskFeatures(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ijv35b1gWG5B6kF0X5IlunMlWQM(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$lockNow$0(Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jYfftsJQtFwMOXKXFCvDQZliYBk(Lcom/afwsamples/testdpc/ShellCommand;)V
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/ShellCommand;->isSecurityLoggingEnabled()V

    return-void
.end method

.method public static synthetic $r8$lambda$jjcFjek-r3hu4NMNvTQcA0dzaz4(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$Validator;)Lcom/afwsamples/testdpc/util/flags/Flags$Validator$ValidationResult;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$run$1(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$Validator;)Lcom/afwsamples/testdpc/util/flags/Flags$Validator$ValidationResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$jyov0vGawdSd8W1Cbi0qu3x0vKk(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$installExistingPackage$1(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kCpreTHsaNwS-AZc9FwyZC9FjKw(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$setLockTaskPackages$0(Ljava/lang/String;Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kPGZ-SegLtIwZjhyv3C_56CFq0s(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;ZLjava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$setUserRestriction$0(Ljava/lang/String;ZLjava/lang/Void;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kccN1NcGLJRdmKR79lDmMayA-o0(Lcom/afwsamples/testdpc/ShellCommand;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/ShellCommand;->setPasswordQuality(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$lEr88dcLFt3_YGYcL2Nuqd_I79A(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand;->setDelegatedScopes(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$m1iGuUChhnb0UeLNFfB-Shkff1g(Lcom/afwsamples/testdpc/ShellCommand;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/ShellCommand;->setAffiliationIds([Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nD3dp-LdhI75tfQzESDxQZ3uQCE(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$wipeData$1(Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$na2KIoplHG-P1702CXVTQDKBbMA(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand;->revokeKeyPairFromApp(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nuU8OddGXMwGQn5EvPh5XGLlyHo(Lcom/afwsamples/testdpc/ShellCommand;)V
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/ShellCommand;->getOrganizationName()V

    return-void
.end method

.method public static synthetic $r8$lambda$nuyHl0u40Gw1tE4j2h7htG6vU8Y(Lcom/afwsamples/testdpc/ShellCommand;Landroid/os/UserHandle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$createUser$0(Landroid/os/UserHandle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ol1lyFuFtprbq4JDjjf7iDPdsRM(Lcom/afwsamples/testdpc/ShellCommand;ZLjava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$setLogoutEnabled$0(ZLjava/lang/Void;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pazIFd3FMlG91sWhVCCP5C4H8HQ(Lcom/afwsamples/testdpc/ShellCommand;ZLjava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$setKeyguardDisabled$1(ZLjava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qHUp1g4MuEKXGXWqwY1fUbDY8eY(Lcom/afwsamples/testdpc/ShellCommand;)V
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/ShellCommand;->getLastNetworkLogRetrievalTime()V

    return-void
.end method

.method public static synthetic $r8$lambda$rOXB5AQJoNpzGW02zTumPfqpjaA(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$setKeyguardDisabledFeatures$0(Ljava/lang/String;Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rPIdFCrtZvooGFIipbbS74A67Gk(Lcom/afwsamples/testdpc/ShellCommand;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/ShellCommand;->setStatusBarDisabled(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$rQCpkhPtnhETb4YqAuqlq4Gm-MY(Lcom/afwsamples/testdpc/ShellCommand;ZLjava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$setStatusBarDisabled$0(ZLjava/lang/Void;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rd9LhLim65tIldgu5G8zJ2S1TKw(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/ShellCommand;->getDelegatedScopes(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sOe5uEO0InjnLJN0J_ZjhIbHuM4(Lcom/afwsamples/testdpc/ShellCommand;)V
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/ShellCommand;->getMaximumFailedPasswordsForWipe()V

    return-void
.end method

.method public static synthetic $r8$lambda$sgWQtXNt1pfjRZ2qD3pbxQGTcc8(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$getKeyPairGrants$0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$shckMdoyo5tnVgEr9VTe48Bml5Y(Lcom/afwsamples/testdpc/ShellCommand;ZLjava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$setLocationEnabled$0(ZLjava/lang/Void;)V

    return-void
.end method

.method public static synthetic $r8$lambda$suHuhhBW6ur_3KI7mvZNOosdcnU(Lcom/afwsamples/testdpc/ShellCommand;)V
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/ShellCommand;->getCrossProfilePackages()V

    return-void
.end method

.method public static synthetic $r8$lambda$sxfrWNo1-8QS882DdDAO6v7slVo(Lcom/afwsamples/testdpc/ShellCommand;ZLjava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$setNetworkLoggingEnabled$1(ZLjava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$t0wO4hvdu5RS3S9zvfEYo95p_ng(Lcom/afwsamples/testdpc/ShellCommand;Ljava/util/List;Ljava/lang/String;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$setDelegatedScopes$0(Ljava/util/List;Ljava/lang/String;Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tRHbRZJtVlQYrnsH2vwFMgMxMRw(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$setUserIcon$0(Ljava/lang/String;Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tSH5Md4eF3LBpRvqe2iWvOuLlMw(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$lockNow$3(Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tfzlPtJvtzXbXpdGNod-Eq_3uUU(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/ShellCommand;->lockNow(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$u08VrKtVZ6gP6GCV-7Lvs8lEBRc(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/ShellCommand;->removeKeyPair(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uB-VNBRJo_L_DwGLbBMmSBoQAew(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$clearDeviceOwner$0(Ljava/lang/String;Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic $r8$lambda$v8P9ahEQHw3GpLnmSQOktslub68(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$createUser$1(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vjCdxl_PmwmQkMwJcMTPA1LGWkg(Lcom/afwsamples/testdpc/ShellCommand;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/ShellCommand;->setPermittedInputMethodsOnParent([Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wBkQf-0ncpjRab_h5agEqasIKGw(Lcom/afwsamples/testdpc/ShellCommand;ZLjava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$setSecurityLoggingEnabled$0(ZLjava/lang/Void;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wC5gTmH4kymBVSrMgjJqnhdzx5o(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$setKeyguardDisabledFeatures$1(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wJ-hmg0XTJd5l8FoHxNX1VsbCXY(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$setLockTaskPackages$1(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wcUurOLqlugKqcgSiKFFvPNy80w(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$setSecureSetting$0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wmgww8WnbFHZYYVJhX7C_hAmjek(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$removeKeyPair$0(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$x7_LahyRgKLBrPbMeTW_Ubv9tGI(Lcom/afwsamples/testdpc/ShellCommand;)V
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/ShellCommand;->clearDeviceOwner()V

    return-void
.end method

.method public static synthetic $r8$lambda$xDAqBiRrI2uQgaC6zRJ0McjZS2k(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$setGlobalSetting$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xN8UCXW8XEntb8bFbG85Ul1NIjo(Lcom/afwsamples/testdpc/ShellCommand;)V
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/ShellCommand;->getUserControlDisabledPackages()V

    return-void
.end method

.method public static synthetic $r8$lambda$xS7tfUcQ0AKr9-c_5xkELV8cmS0(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;ZLjava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$setUninstallBlocked$1(Ljava/lang/String;ZLjava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xpcxFn_9g38VXZXip7tjCGYY6Y0(Lcom/afwsamples/testdpc/ShellCommand;Ljava/util/Set;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$setCrossProfilePackages$1(Ljava/util/Set;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$y7i3L2IaYFY86NsA6z3uFMDEYKY(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/ShellCommand;->enableSystemApp(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yL-_3LtdLP-FK0fu3stF_D_uMPo(Lcom/afwsamples/testdpc/ShellCommand;)V
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/ShellCommand;->isLocationEnabled()V

    return-void
.end method

.method public static synthetic $r8$lambda$yPpinKOFxFjHozgOzR5r3ueSJRs(Lcom/afwsamples/testdpc/ShellCommand;)V
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/ShellCommand;->getLastSecurityLogRetrievalTime()V

    return-void
.end method

.method public static synthetic $r8$lambda$yU9GCCXHvBH4cpORoeYeMs48C4c(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$revokeKeyPairFromApp$0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yWoQvYs6ygxAZ2tXgwiMJX43Xrs(Lcom/afwsamples/testdpc/ShellCommand;ZLjava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$setStatusBarDisabled$1(ZLjava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ydk3X4bMkhR2E29sW28MNjZuLT4(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$setUserIcon$1(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yok6-mcuSWqEzf-FLxn9T88eaN8(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$grantKeyPairToApp$0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$z4hGJsZtnuSHz16v3kmrzYO9ehY(Lcom/afwsamples/testdpc/ShellCommand;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/ShellCommand;->setUserControlDisabledPackages([Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zSKd6MKiq60r4eRkkhn-qzP6MLQ(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$setHiddenPackage$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zdLvB3YcEzsT8ZBc_y4NBhHBnoc(Lcom/afwsamples/testdpc/ShellCommand;Landroid/os/UserHandle;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$removeUser$0(Landroid/os/UserHandle;Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zuDCbVE__rpmbaJQdEJYEOcujq8(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/ShellCommand;->installExistingPackage(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "writer",
            "args"
        }
    .end annotation

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mContext:Landroid/content/Context;

    .line 84
    iput-object p2, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    .line 85
    iput-object p3, p0, Lcom/afwsamples/testdpc/ShellCommand;->mArgs:[Ljava/lang/String;

    .line 86
    new-instance v0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;

    invoke-direct {v0, p1}, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    .line 87
    nop

    .line 90
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 92
    invoke-static {}, Lcom/afwsamples/testdpc/common/Util;->myProcessName()Ljava/lang/String;

    move-result-object v1

    .line 94
    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "constructor: pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", process name="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", args="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    const-string v1, "TestDPCShellCommand"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    return-void
.end method

.method private static buildRsaKeySpecWithKeyAttestation(Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec;
    .locals 5
    .param p0, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "alias"
        }
    .end annotation

    .line 1634
    new-instance v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const/16 v1, 0xc

    invoke-direct {v0, p0, v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    .line 1636
    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeySize(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "SHA-256"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 1637
    invoke-virtual {v0, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "PSS"

    aput-object v3, v2, v4

    const-string v3, "PKCS1"

    aput-object v3, v2, v1

    .line 1638
    invoke-virtual {v0, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setSignaturePaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v0

    .line 1640
    invoke-virtual {v0, v4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setIsStrongBoxBacked(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    .line 1641
    invoke-virtual {v0, v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setAttestationChallenge([B)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v0

    .line 1644
    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v0

    .line 1634
    return-object v0

    nop

    :array_0
    .array-data 1
        0x61t
        0x62t
        0x63t
    .end array-data
.end method

.method private canAdminGrantSensorsPermissions()V
    .locals 2

    .line 1273
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v1}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->canAdminGrantSensorsPermissions()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1274
    return-void
.end method

.method private canUsbDataSignalingBeDisabled()V
    .locals 5

    .line 1093
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v0}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->canUsbDataSignalingBeDisabled()Z

    move-result v0

    .line 1094
    .local v0, "result":Z
    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const-string v2, "canUsbDataSignalingBeDisabled: %b\n"

    invoke-virtual {v1, v2, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1095
    return-void
.end method

.method private clearDeviceOwner()V
    .locals 4

    .line 983
    const-string v0, "TestDPCShellCommand"

    const-string v1, "clearDeviceOwner()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v0}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->getAdmin()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 986
    .local v0, "pkg":Ljava/lang/String;
    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v2, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda167;

    invoke-direct {v2, p0, v0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda167;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;)V

    new-instance v3, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda178;

    invoke-direct {v3, p0, v0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda178;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->clearDeviceOwnerApp(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 989
    return-void
.end method

.method private clearDeviceOwnerLockScreenInfo()V
    .locals 1

    .line 1289
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/ShellCommand;->setDeviceOwnerLockScreenInfo(Ljava/lang/String;)V

    .line 1290
    return-void
.end method

.method private clearOrganizationName()V
    .locals 1

    .line 917
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/ShellCommand;->setOrganizationName(Ljava/lang/String;)V

    .line 918
    return-void
.end method

.method private clearPassword()V
    .locals 1

    .line 1469
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/ShellCommand;->resetPasswordWithToken(Ljava/lang/String;)V

    .line 1470
    return-void
.end method

.method private clearProfileOwner()V
    .locals 4

    .line 992
    const-string v0, "TestDPCShellCommand"

    const-string v1, "clearProfileOwner()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v0}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->getAdmin()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 995
    .local v0, "pkg":Ljava/lang/String;
    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v2, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda162;

    invoke-direct {v2, p0, v0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda162;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;)V

    new-instance v3, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda163;

    invoke-direct {v3, p0, v0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda163;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->clearProfileOwner(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 998
    return-void
.end method

.method private createUser(Ljava/lang/String;I)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "flags"
        }
    .end annotation

    .line 675
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createUser(): name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TestDPCShellCommand"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda106;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda106;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    new-instance v2, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda107;

    invoke-direct {v2, p0, p1}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda107;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;)V

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->createAndManageUser(Ljava/lang/String;ILjava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 681
    return-void
.end method

.method private dpm()Landroid/app/admin/DevicePolicyManager;
    .locals 1

    .line 1666
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v0}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    return-object v0
.end method

.method private dumpState()V
    .locals 5

    .line 658
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v1}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->isDeviceOwnerApp()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const-string v1, "isDeviceOwner: %b\n"

    invoke-virtual {v0, v1, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 659
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v1}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->isProfileOwnerApp()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    aput-object v1, v3, v4

    const-string v1, "isProfileOwner: %b\n"

    invoke-virtual {v0, v1, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 660
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    .line 662
    invoke-interface {v1}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->isOrganizationOwnedDeviceWithManagedProfile()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    aput-object v1, v3, v4

    .line 660
    const-string v1, "isOrganizationOwnedDeviceWithManagedProfile: %b\n"

    invoke-virtual {v0, v1, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 663
    invoke-static {}, Lcom/afwsamples/testdpc/common/Util;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 664
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    .line 665
    invoke-interface {v1}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->isHeadlessSystemUserMode()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    aput-object v1, v3, v4

    .line 664
    const-string v1, "isHeadlessSystemUserMode: %b\n"

    invoke-virtual {v0, v1, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 666
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v1}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->isUserForeground()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    aput-object v1, v3, v4

    const-string v1, "isUserForeground: %b\n"

    invoke-virtual {v0, v1, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 668
    :cond_0
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    .line 669
    invoke-interface {v1}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->isDeviceIdAttestationSupported()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    aput-object v1, v3, v4

    .line 668
    const-string v1, "isDeviceIdAttestationSupported: %b\n"

    invoke-virtual {v0, v1, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 670
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    .line 671
    invoke-interface {v1}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->isUniqueDeviceAttestationSupported()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v4

    .line 670
    const-string v1, "isUniqueDeviceAttestationSupported: %b\n"

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 672
    return-void
.end method

.method private enableSystemApp(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageName"
        }
    .end annotation

    .line 1162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableSystemApp(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TestDPCShellCommand"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda100;

    invoke-direct {v1, p0, p1}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda100;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;)V

    new-instance v2, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda101;

    invoke-direct {v2, p0, p1}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda101;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;)V

    invoke-interface {v0, p1, v1, v2}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->enableSystemApp(Ljava/lang/String;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 1167
    return-void
.end method

.method private generateDeviceAttestationKeyPair(Ljava/lang/String;I)V
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "alias",
            "flags"
        }
    .end annotation

    .line 1405
    invoke-direct {p0}, Lcom/afwsamples/testdpc/ShellCommand;->warnAboutAsyncCall()V

    .line 1406
    new-instance v0, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda134;

    invoke-direct {v0, p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda134;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/ShellCommand;->post(Ljava/lang/Runnable;)V

    .line 1407
    return-void
.end method

.method private getActiveResetPasswordToken()[B
    .locals 5

    .line 1473
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/afwsamples/testdpc/policy/resetpassword/ResetPasswordWithTokenFragment;->loadPasswordResetTokenFromPreference(Landroid/content/Context;)[B

    move-result-object v0

    .line 1474
    .local v0, "token":[B
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1475
    return-object v1

    .line 1477
    :cond_0
    invoke-direct {p0}, Lcom/afwsamples/testdpc/ShellCommand;->dpm()Landroid/app/admin/DevicePolicyManager;

    move-result-object v2

    iget-object v3, p0, Lcom/afwsamples/testdpc/ShellCommand;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->isResetPasswordTokenActive(Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1478
    const-string v2, "TestDPCShellCommand"

    const-string v3, "Token exists but is not activated."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1479
    iget-object v2, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Token exists but is not activated.\n"

    invoke-virtual {v2, v4, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1480
    return-object v1

    .line 1482
    :cond_1
    return-object v0
.end method

.method private getAffiliationIds()V
    .locals 5

    .line 769
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v0}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->getAffiliationIds()Ljava/util/Set;

    move-result-object v0

    .line 770
    .local v0, "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 771
    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    const-string v2, "no affiliation ids"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 772
    return-void

    .line 774
    :cond_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v2, 0x1

    aput-object v0, v3, v2

    const-string v2, "%d affiliation ids: %s\n"

    invoke-virtual {v1, v2, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 775
    return-void
.end method

.method private getAppRestrictions([Ljava/lang/String;)V
    .locals 5
    .param p1, "packageNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageNames"
        }
    .end annotation

    .line 1227
    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1228
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mContext:Landroid/content/Context;

    .line 1229
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    .line 1231
    invoke-interface {v1}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->getSelfRestrictions()Landroid/os/Bundle;

    move-result-object v1

    .line 1228
    const-string v2, "UserManager"

    invoke-direct {p0, v0, v2, v1}, Lcom/afwsamples/testdpc/ShellCommand;->printAppRestrictions(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1232
    return-void

    .line 1235
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 1236
    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v3, v2}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 1237
    .local v3, "settings":Landroid/os/Bundle;
    const-string v4, "DevicePolicyManager"

    invoke-direct {p0, v2, v4, v3}, Lcom/afwsamples/testdpc/ShellCommand;->printAppRestrictions(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1235
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "settings":Landroid/os/Bundle;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1239
    :cond_1
    return-void
.end method

.method private getCameraDisabled()V
    .locals 5

    .line 1336
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    .line 1338
    invoke-interface {v1}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->getAdmin()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    .line 1339
    invoke-interface {v2}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->getCameraDisabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    .line 1336
    const-string v2, "By %s: %b\n"

    invoke-virtual {v0, v2, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1340
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    iget-object v2, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v2}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->getCameraDisabledByAnyAdmin()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v4

    const-string v2, "By any admin: %b\n"

    invoke-virtual {v0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1341
    return-void
.end method

.method private getCrossProfilePackages()V
    .locals 3

    .line 969
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v0}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->getCrossProfilePackages()Ljava/util/Set;

    move-result-object v0

    .line 970
    .local v0, "pkgs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda11;

    invoke-direct {v2, v1}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda11;-><init>(Ljava/io/PrintWriter;)V

    invoke-static {v0, v2}, Lj$/lang/Iterable$-EL;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    .line 971
    return-void
.end method

.method private getDelegatePackages(Ljava/lang/String;)V
    .locals 4
    .param p1, "delegationScope"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "delegationScope"
        }
    .end annotation

    .line 1459
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v0, p1}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->getDelegatePackages(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1460
    .local v0, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDelegatePackages("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TestDPCShellCommand"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1461
    const-string v1, "package"

    invoke-direct {p0, v1, v0}, Lcom/afwsamples/testdpc/ShellCommand;->printCollection(Ljava/lang/String;Ljava/util/Collection;)V

    .line 1462
    return-void
.end method

.method private getDelegatedScopes(Ljava/lang/String;)V
    .locals 4
    .param p1, "delegatePackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "delegatePackage"
        }
    .end annotation

    .line 1453
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v0, p1}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->getDelegatedScopes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1454
    .local v0, "scopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDelegatedScopes("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TestDPCShellCommand"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1455
    const-string v1, "scope"

    invoke-direct {p0, v1, v0}, Lcom/afwsamples/testdpc/ShellCommand;->printCollection(Ljava/lang/String;Ljava/util/Collection;)V

    .line 1456
    return-void
.end method

.method private getDeviceOwnerLockScreenInfo()V
    .locals 4

    .line 1300
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v0}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->getDeviceOwnerLockScreenInfo()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1301
    .local v0, "info":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v3, "Lock screen info: %s\n"

    invoke-virtual {v1, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1302
    return-void
.end method

.method private getEndUserSessionMessage()V
    .locals 4

    .line 719
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v0}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->getEndUserSessionMessage()Ljava/lang/CharSequence;

    move-result-object v0

    .line 720
    .local v0, "message":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v3, "%s\n"

    invoke-virtual {v1, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 721
    return-void
.end method

.method private getKeyPairGrants(Ljava/lang/String;)V
    .locals 10
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "alias"
        }
    .end annotation

    .line 1424
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v0, p1}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->getKeyPairGrants(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 1425
    .local v0, "grants":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 1426
    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    const-string v3, "%s not granted to any app\n"

    invoke-virtual {v1, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1427
    return-void

    .line 1430
    :cond_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v3

    aput-object v4, v5, v2

    const-string v4, "%s granted to %d apps, listed by uid:\n"

    invoke-virtual {v1, v4, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1431
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1432
    .local v4, "app":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1433
    .local v5, "uid":I
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    .line 1434
    .local v6, "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-array v9, v2, [Ljava/lang/Object;

    aput-object v8, v9, v3

    const-string v8, "\t%d: "

    invoke-virtual {v7, v8, v9}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1435
    new-instance v7, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda98;

    invoke-direct {v7, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda98;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    invoke-static {v6, v7}, Lj$/lang/Iterable$-EL;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    .line 1436
    iget-object v7, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    invoke-virtual {v7}, Ljava/io/PrintWriter;->println()V

    .line 1437
    .end local v4    # "app":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v5    # "uid":I
    .end local v6    # "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_0

    .line 1438
    :cond_1
    return-void
.end method

.method private getKeyguardDisabledFeatures()V
    .locals 6

    .line 1322
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v0}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->getKeyguardDisabledFeatures()I

    move-result v0

    .line 1323
    .local v0, "flags":I
    invoke-static {v0}, Lcom/afwsamples/testdpc/common/Util;->keyguardDisabledFeaturesToString(I)Ljava/lang/String;

    move-result-object v1

    .line 1325
    .local v1, "features":Ljava/lang/String;
    iget-object v2, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    aput-object v3, v4, v5

    const-string v3, "%s (%d)\n"

    invoke-virtual {v2, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1326
    return-void
.end method

.method private getLastBugReportRequestTime()V
    .locals 2

    .line 848
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v0}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->getLastBugReportRequestTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->printTime(J)V

    .line 849
    return-void
.end method

.method private getLastNetworkLogRetrievalTime()V
    .locals 2

    .line 864
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v0}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->getLastNetworkLogRetrievalTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->printTime(J)V

    .line 865
    return-void
.end method

.method private getLastSecurityLogRetrievalTime()V
    .locals 2

    .line 905
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v0}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->getLastSecurityLogRetrievalTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->printTime(J)V

    .line 906
    return-void
.end method

.method private getLockTaskFeatures()V
    .locals 6

    .line 1208
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v0}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->getLockTaskFeatures()I

    move-result v0

    .line 1209
    .local v0, "flags":I
    invoke-static {v0}, Lcom/afwsamples/testdpc/common/Util;->lockTaskFeaturesToString(I)Ljava/lang/String;

    move-result-object v1

    .line 1211
    .local v1, "features":Ljava/lang/String;
    iget-object v2, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    aput-object v3, v4, v5

    const-string v3, "%s (%d)\n"

    invoke-virtual {v2, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1212
    return-void
.end method

.method private getLockTaskPackages()V
    .locals 3

    .line 1189
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v0}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->getLockTaskPackages()[Ljava/lang/String;

    move-result-object v0

    .line 1190
    .local v0, "packages":[Ljava/lang/String;
    array-length v1, v0

    if-nez v1, :cond_0

    .line 1191
    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    const-string v2, "no lock task packages"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1192
    return-void

    .line 1194
    :cond_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1195
    return-void
.end method

.method private getMaximumFailedPasswordsForWipe()V
    .locals 2

    .line 1350
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v1}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->getMaximumFailedPasswordsForWipe()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 1351
    return-void
.end method

.method private getMeteredDataDisabledPackages()V
    .locals 4

    .line 1526
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v0}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->getMeteredDataDisabledPackages()Ljava/util/List;

    move-result-object v0

    .line 1527
    .local v0, "disabledPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMeteredDataDisabledPackages(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TestDPCShellCommand"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1528
    const-string v1, "disabled-package"

    invoke-direct {p0, v1, v0}, Lcom/afwsamples/testdpc/ShellCommand;->printCollection(Ljava/lang/String;Ljava/util/Collection;)V

    .line 1529
    return-void
.end method

.method private getOrderedSortedSet([Ljava/lang/String;)Ljava/util/Set;
    .locals 2
    .param p1, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1629
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method private getOrganizationName()V
    .locals 3

    .line 929
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v0}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->getOrganizationName()Ljava/lang/CharSequence;

    move-result-object v0

    .line 930
    .local v0, "title":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    .line 931
    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    const-string v2, "Not set"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 932
    return-void

    .line 934
    :cond_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 935
    return-void
.end method

.method private getPasswordQuality()V
    .locals 6

    .line 1034
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v0}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->getPasswordQuality()I

    move-result v0

    .line 1036
    .local v0, "quality":I
    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    invoke-static {v0}, Lcom/afwsamples/testdpc/common/Util;->passwordQualityToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x1

    aput-object v3, v4, v2

    const-string v2, "%s (%d)\n"

    invoke-virtual {v1, v2, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1037
    return-void
.end method

.method private getPermissionGrantState(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "packageName",
            "permission"
        }
    .end annotation

    .line 1267
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v0, p1, p2}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->getPermissionGrantState(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1268
    .local v0, "grantState":I
    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    .line 1269
    invoke-static {v0}, Lcom/afwsamples/testdpc/common/Util;->grantStateToString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object v2, v3, v4

    .line 1268
    const-string v2, "%s state for %s: %s\n"

    invoke-virtual {v1, v2, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1270
    return-void
.end method

.method private getPersonalAppsSuspendedReasons()V
    .locals 6

    .line 1155
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v0}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->getPersonalAppsSuspendedReasons()I

    move-result v0

    .line 1156
    .local v0, "reasons":I
    invoke-static {v0}, Lcom/afwsamples/testdpc/common/Util;->personalAppsSuspensionReasonToString(I)Ljava/lang/String;

    move-result-object v1

    .line 1158
    .local v1, "printableReasons":Ljava/lang/String;
    iget-object v2, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    aput-object v3, v4, v5

    const-string v3, "%s (%d)\n"

    invoke-virtual {v2, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1159
    return-void
.end method

.method private getRequiredPasswordComplexity()V
    .locals 6

    .line 1067
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v0}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->getRequiredPasswordComplexity()I

    move-result v0

    .line 1069
    .local v0, "complexity":I
    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    invoke-static {v0}, Lcom/afwsamples/testdpc/common/Util;->requiredPasswordComplexityToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x1

    aput-object v3, v4, v2

    const-string v2, "%s (%d)\n"

    invoke-virtual {v1, v2, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1070
    return-void
.end method

.method private getStartUserSessionMessage()V
    .locals 4

    .line 706
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v0}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->getStartUserSessionMessage()Ljava/lang/CharSequence;

    move-result-object v0

    .line 707
    .local v0, "message":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v3, "%s\n"

    invoke-virtual {v1, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 708
    return-void
.end method

.method private getUserControlDisabledPackages()V
    .locals 3

    .line 948
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v0}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->getUserControlDisabledPackages()Ljava/util/List;

    move-result-object v0

    .line 949
    .local v0, "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda11;

    invoke-direct {v2, v1}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda11;-><init>(Ljava/io/PrintWriter;)V

    invoke-static {v0, v2}, Lj$/lang/Iterable$-EL;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    .line 950
    return-void
.end method

.method private grantKeyPairToApp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "alias",
            "packageName"
        }
    .end annotation

    .line 1416
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda88;

    invoke-direct {v1, p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda88;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda99;

    invoke-direct {v2, p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda99;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->grantKeyPairToApp(Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 1421
    return-void
.end method

.method private handleDeviceAttestationKeyPair(Ljava/lang/String;I)V
    .locals 6
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "alias",
            "flags"
        }
    .end annotation

    .line 1546
    invoke-static {p1}, Lcom/afwsamples/testdpc/ShellCommand;->buildRsaKeySpecWithKeyAttestation(Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v2

    .line 1547
    .local v2, "keySpec":Landroid/security/keystore/KeyGenParameterSpec;
    const-string v1, "RSA"

    .line 1548
    .local v1, "algorithm":Ljava/lang/String;
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v4, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda180;

    invoke-direct {v4}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda180;-><init>()V

    new-instance v5, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda181;

    invoke-direct {v5, p1, p2, v2}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda181;-><init>(Ljava/lang/String;ILandroid/security/keystore/KeyGenParameterSpec;)V

    move v3, p2

    .end local p2    # "flags":I
    .local v3, "flags":I
    invoke-interface/range {v0 .. v5}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->generateKeyPair(Ljava/lang/String;Landroid/security/keystore/KeyGenParameterSpec;ILjava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 1552
    return-void
.end method

.method private hasKeyPair(Ljava/lang/String;)V
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "alias"
        }
    .end annotation

    .line 1400
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v1, p1}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->hasKeyPair(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1401
    return-void
.end method

.method private static hiddenToString(Z)Ljava/lang/String;
    .locals 1
    .param p0, "hidden"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hidden"
        }
    .end annotation

    .line 102
    if-eqz p0, :cond_0

    const-string v0, "HIDDEN"

    goto :goto_0

    :cond_0
    const-string v0, "VISIBLE"

    :goto_0
    return-object v0
.end method

.method private installExistingPackage(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageName"
        }
    .end annotation

    .line 1368
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda125;

    invoke-direct {v1, p0, p1}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda125;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;)V

    new-instance v2, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda126;

    invoke-direct {v2, p0, p1}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda126;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;)V

    invoke-interface {v0, p1, v1, v2}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->installExistingPackage(Ljava/lang/String;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 1371
    return-void
.end method

.method private isActivePasswordSufficient()V
    .locals 5

    .line 1040
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v0}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->isActivePasswordSufficient()Z

    move-result v0

    .line 1042
    .local v0, "isIt":Z
    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const-string v2, "%b\n"

    invoke-virtual {v1, v2, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1043
    return-void
.end method

.method private isActivePasswordSufficientForDeviceRequirement()V
    .locals 5

    .line 1046
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v0}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->isActivePasswordSufficientForDeviceRequirement()Z

    move-result v0

    .line 1048
    .local v0, "isIt":Z
    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const-string v2, "%b\n"

    invoke-virtual {v1, v2, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1049
    return-void
.end method

.method private isForegroundUser()V
    .locals 2

    .line 1021
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v1}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->isUserForeground()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1022
    return-void
.end method

.method private isHiddenPackage(Ljava/lang/String;)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageName"
        }
    .end annotation

    .line 1136
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v2, p1}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->isApplicationHidden(Ljava/lang/String;)Z

    move-result v2

    .line 1137
    .local v2, "hidden":Z
    iget-object v3, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    const-string v4, "%s: %s\n"

    invoke-static {v2}, Lcom/afwsamples/testdpc/ShellCommand;->hiddenToString(Z)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v0

    aput-object v5, v6, v1

    invoke-virtual {v3, v4, v6}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1140
    nop

    .end local v2    # "hidden":Z
    goto :goto_0

    .line 1138
    :catch_0
    move-exception v2

    .line 1139
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v3, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    const-string v0, "Invalid package name: %s\n"

    invoke-virtual {v3, v0, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1141
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    return-void
.end method

.method private isLocationEnabled()V
    .locals 5

    .line 1284
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v0}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->isLocationEnabled()Z

    move-result v0

    .line 1285
    .local v0, "enabled":Z
    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const-string v2, "Location enabled: %b\n"

    invoke-virtual {v1, v2, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1286
    return-void
.end method

.method private isLockTaskPermitted([Ljava/lang/String;)V
    .locals 9
    .param p1, "packageNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageNames"
        }
    .end annotation

    .line 1361
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    .line 1362
    .local v3, "packageName":Ljava/lang/String;
    iget-object v4, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v4, v3}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->isLockTaskPermitted(Ljava/lang/String;)Z

    move-result v4

    .line 1363
    .local v4, "permitted":Z
    iget-object v5, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    invoke-static {v4}, Lcom/afwsamples/testdpc/ShellCommand;->permittedToString(Z)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v3, v7, v1

    const/4 v8, 0x1

    aput-object v6, v7, v8

    const-string v6, "%s: %s\n"

    invoke-virtual {v5, v6, v7}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1361
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "permitted":Z
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1365
    :cond_0
    return-void
.end method

.method private isLogoutEnabled()V
    .locals 2

    .line 752
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v1}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->isLogoutEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 753
    return-void
.end method

.method private isNetworkLoggingEnabled()V
    .locals 2

    .line 860
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v1}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->isNetworkLoggingEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 861
    return-void
.end method

.method private isSecurityLoggingEnabled()V
    .locals 2

    .line 901
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v1}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->isSecurityLoggingEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 902
    return-void
.end method

.method private isSuspendedPackage([Ljava/lang/String;)V
    .locals 10
    .param p1, "packageNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageNames"
        }
    .end annotation

    .line 1113
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    .line 1115
    .local v3, "packageName":Ljava/lang/String;
    const/4 v4, 0x1

    :try_start_0
    iget-object v5, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v5, v3}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->isPackageSuspended(Ljava/lang/String;)Z

    move-result v5

    .line 1116
    .local v5, "suspended":Z
    iget-object v6, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    const-string v7, "%s: %s\n"

    invoke-static {v5}, Lcom/afwsamples/testdpc/ShellCommand;->suspendedToString(Z)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v3, v9, v1

    aput-object v8, v9, v4

    invoke-virtual {v6, v7, v9}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1119
    nop

    .end local v5    # "suspended":Z
    goto :goto_1

    .line 1117
    :catch_0
    move-exception v5

    .line 1118
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v6, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v1

    const-string v7, "Invalid package name: %s\n"

    invoke-virtual {v6, v7, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1113
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1121
    :cond_0
    return-void
.end method

.method private isUninstallBlocked(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageName"
        }
    .end annotation

    .line 1382
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v0, p1}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->isUninstallBlocked(Ljava/lang/String;)Z

    move-result v0

    .line 1383
    .local v0, "isIt":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isUninstallBlocked("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TestDPCShellCommand"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1384
    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1385
    return-void
.end method

.method private isUserAffiliated()V
    .locals 2

    .line 786
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v1}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->isAffiliatedUser()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 787
    return-void
.end method

.method private synthetic lambda$clearDeviceOwner$0(Ljava/lang/String;Ljava/lang/Void;)V
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/Void;

    .line 987
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "Removed %s as device owner"

    invoke-direct {p0, v1, v0}, Lcom/afwsamples/testdpc/ShellCommand;->onSuccess(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$clearDeviceOwner$1(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .line 988
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "Error removing %s as device owner"

    invoke-direct {p0, p2, v1, v0}, Lcom/afwsamples/testdpc/ShellCommand;->onError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$clearProfileOwner$0(Ljava/lang/String;Ljava/lang/Void;)V
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/Void;

    .line 996
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "Removed %s as profile owner"

    invoke-direct {p0, v1, v0}, Lcom/afwsamples/testdpc/ShellCommand;->onSuccess(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$clearProfileOwner$1(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .line 997
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "Error removing %s as profile owner"

    invoke-direct {p0, p2, v1, v0}, Lcom/afwsamples/testdpc/ShellCommand;->onError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$createUser$0(Landroid/os/UserHandle;)V
    .locals 3
    .param p1, "u"    # Landroid/os/UserHandle;

    .line 679
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/ShellCommand;->toString(Landroid/os/UserHandle;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "User created: %s"

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->onSuccess(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$createUser$1(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .line 680
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "Error creating user %s"

    invoke-direct {p0, p2, v1, v0}, Lcom/afwsamples/testdpc/ShellCommand;->onError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$enableSystemApp$0(Ljava/lang/String;Ljava/lang/Void;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/Void;

    .line 1165
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "Enabled system apps %s"

    invoke-direct {p0, v1, v0}, Lcom/afwsamples/testdpc/ShellCommand;->onSuccess(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$enableSystemApp$1(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .line 1166
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "Error enabling systen app%s"

    invoke-direct {p0, p2, v1, v0}, Lcom/afwsamples/testdpc/ShellCommand;->onError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$generateDeviceAttestationKeyPair$0(Ljava/lang/String;I)V
    .locals 0
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .line 1406
    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand;->handleDeviceAttestationKeyPair(Ljava/lang/String;I)V

    return-void
.end method

.method private synthetic lambda$getKeyPairGrants$0(Ljava/lang/String;)V
    .locals 3
    .param p1, "p"    # Ljava/lang/String;

    .line 1435
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "%s "

    invoke-virtual {v0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return-void
.end method

.method private synthetic lambda$getSecondaryUsers$0(Landroid/os/UserHandle;)Ljava/lang/String;
    .locals 1
    .param p1, "u"    # Landroid/os/UserHandle;

    .line 1534
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/ShellCommand;->toString(Landroid/os/UserHandle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$grantKeyPairToApp$0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "v"    # Ljava/lang/Boolean;

    .line 1417
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Granted"

    goto :goto_0

    :cond_0
    const-string v0, "Didn\'t grant"

    :goto_0
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p1, v1, v0

    const/4 v0, 0x2

    aput-object p2, v1, v0

    const-string v0, "%s certificate with alias %s to app %s"

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->onSuccess(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$grantKeyPairToApp$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "e"    # Ljava/lang/Exception;

    .line 1419
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string v1, "Error granting certificate with alias %s to app %s"

    invoke-direct {p0, p3, v1, v0}, Lcom/afwsamples/testdpc/ShellCommand;->onError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$handleDeviceAttestationKeyPair$0(Landroid/security/AttestedKeyPair;)V
    .locals 2
    .param p0, "v"    # Landroid/security/AttestedKeyPair;

    .line 1549
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string v1, "Generated key: %s"

    invoke-static {v1, v0}, Lcom/afwsamples/testdpc/ShellCommand;->onSuccessLog(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$handleDeviceAttestationKeyPair$1(Ljava/lang/String;ILandroid/security/keystore/KeyGenParameterSpec;Ljava/lang/Exception;)V
    .locals 3
    .param p0, "alias"    # Ljava/lang/String;
    .param p1, "flags"    # I
    .param p2, "keySpec"    # Landroid/security/keystore/KeyGenParameterSpec;
    .param p3, "e"    # Ljava/lang/Exception;

    .line 1550
    nop

    .line 1551
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const/4 v0, 0x2

    aput-object p2, v1, v0

    .line 1550
    const-string v0, "Error generating key with alias %s, flags %d, and spec %s"

    invoke-static {p3, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->onErrorLog(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$installExistingPackage$0(Ljava/lang/String;Ljava/lang/Void;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/Void;

    .line 1369
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "Installed existing package %s"

    invoke-direct {p0, v1, v0}, Lcom/afwsamples/testdpc/ShellCommand;->onSuccess(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$installExistingPackage$1(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .line 1370
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "Error installing existing package %s"

    invoke-direct {p0, p2, v1, v0}, Lcom/afwsamples/testdpc/ShellCommand;->onError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$listForegroundUsers$0(Landroid/os/UserHandle;)V
    .locals 3
    .param p1, "u"    # Landroid/os/UserHandle;

    .line 1017
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "\t%s\n"

    invoke-virtual {v0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return-void
.end method

.method private synthetic lambda$lockNow$0(Ljava/lang/Void;)V
    .locals 2
    .param p1, "v"    # Ljava/lang/Void;

    .line 821
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Device locked"

    invoke-direct {p0, v1, v0}, Lcom/afwsamples/testdpc/ShellCommand;->onSuccess(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$lockNow$1(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .line 821
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Error locking device"

    invoke-direct {p0, p1, v1, v0}, Lcom/afwsamples/testdpc/ShellCommand;->onError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$lockNow$2(Ljava/lang/Void;)V
    .locals 2
    .param p1, "v"    # Ljava/lang/Void;

    .line 825
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Device locked"

    invoke-direct {p0, v1, v0}, Lcom/afwsamples/testdpc/ShellCommand;->onSuccess(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$lockNow$3(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .line 825
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Error locking device"

    invoke-direct {p0, p1, v1, v0}, Lcom/afwsamples/testdpc/ShellCommand;->onError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$logoutUser$0(Landroid/os/UserHandle;Ljava/lang/Integer;)V
    .locals 2
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .param p2, "v"    # Ljava/lang/Integer;

    .line 764
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "User %s logged out"

    invoke-direct {p0, v1, v0}, Lcom/afwsamples/testdpc/ShellCommand;->onSuccess(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$logoutUser$1(Landroid/os/UserHandle;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .param p2, "e"    # Ljava/lang/Exception;

    .line 765
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "Error logging out user %s"

    invoke-direct {p0, p2, v1, v0}, Lcom/afwsamples/testdpc/ShellCommand;->onError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$printCollection$0(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .line 1592
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "  %s\n"

    invoke-virtual {v0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return-void
.end method

.method private synthetic lambda$reboot$0(Ljava/lang/Void;)V
    .locals 2
    .param p1, "v"    # Ljava/lang/Void;

    .line 832
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Device rebooted"

    invoke-direct {p0, v1, v0}, Lcom/afwsamples/testdpc/ShellCommand;->onSuccess(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$reboot$1(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .line 832
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Error rebooting device"

    invoke-direct {p0, p1, v1, v0}, Lcom/afwsamples/testdpc/ShellCommand;->onError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$removeActiveAdmin$0(Landroid/content/ComponentName;Ljava/lang/Void;)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "v"    # Ljava/lang/Void;

    .line 978
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "Removed %s as an active admin"

    invoke-direct {p0, v1, v0}, Lcom/afwsamples/testdpc/ShellCommand;->onSuccess(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$removeActiveAdmin$1(Landroid/content/ComponentName;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "e"    # Ljava/lang/Exception;

    .line 979
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "Error removing %s as admin"

    invoke-direct {p0, p2, v1, v0}, Lcom/afwsamples/testdpc/ShellCommand;->onError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$removeKeyPair$0(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/Boolean;

    .line 1411
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Removed"

    goto :goto_0

    :cond_0
    const-string v0, "Didn\'t remove"

    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p1, v1, v0

    const-string v0, "%s certificate withalias %s"

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->onSuccess(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$removeKeyPair$1(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .line 1412
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "Error removing certificate with alias %s"

    invoke-direct {p0, p2, v1, v0}, Lcom/afwsamples/testdpc/ShellCommand;->onError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$removeUser$0(Landroid/os/UserHandle;Ljava/lang/Void;)V
    .locals 2
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .param p2, "v"    # Ljava/lang/Void;

    .line 726
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "User %s removed"

    invoke-direct {p0, v1, v0}, Lcom/afwsamples/testdpc/ShellCommand;->onSuccess(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$removeUser$1(Landroid/os/UserHandle;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .param p2, "e"    # Ljava/lang/Exception;

    .line 727
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "Error removing user %s"

    invoke-direct {p0, p2, v1, v0}, Lcom/afwsamples/testdpc/ShellCommand;->onError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$requestBugreport$0(Ljava/lang/Void;)V
    .locals 2
    .param p1, "v"    # Ljava/lang/Void;

    .line 844
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Bugreport requested"

    invoke-direct {p0, v1, v0}, Lcom/afwsamples/testdpc/ShellCommand;->onSuccess(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$requestBugreport$1(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .line 844
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Error requesting bugreport"

    invoke-direct {p0, p1, v1, v0}, Lcom/afwsamples/testdpc/ShellCommand;->onError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$revokeKeyPairFromApp$0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "v"    # Ljava/lang/Boolean;

    .line 1445
    nop

    .line 1447
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Revoked"

    goto :goto_0

    :cond_0
    const-string v0, "Didn\'t revoke"

    :goto_0
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p1, v1, v0

    const/4 v0, 0x2

    aput-object p2, v1, v0

    .line 1445
    const-string v0, "%s certificate with alias %s to app %s"

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->onSuccess(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$revokeKeyPairFromApp$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "e"    # Ljava/lang/Exception;

    .line 1449
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string v1, "Error revoking certificate with alias %s to app %s"

    invoke-direct {p0, p3, v1, v0}, Lcom/afwsamples/testdpc/ShellCommand;->onError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$run$0(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$Validator;)Lcom/afwsamples/testdpc/util/flags/Flags$Validator$ValidationResult;
    .locals 7
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "validator"    # Lcom/afwsamples/testdpc/util/flags/Flags$Validator;

    .line 118
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .local v0, "serialNumber":J
    nop

    .line 123
    iget-object v2, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v2, v0, v1}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->getUserHandle(J)Landroid/os/UserHandle;

    move-result-object v2

    .line 124
    .local v2, "userHandle":Landroid/os/UserHandle;
    if-nez v2, :cond_0

    .line 125
    nop

    .line 126
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    const-string v4, "User %d does not exist."

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 125
    invoke-virtual {p2, v3}, Lcom/afwsamples/testdpc/util/flags/Flags$Validator;->invalid(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$Validator$ValidationResult;

    move-result-object v3

    return-object v3

    .line 129
    :cond_0
    invoke-virtual {p2, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$Validator;->valid(Ljava/lang/Object;)Lcom/afwsamples/testdpc/util/flags/Flags$Validator$ValidationResult;

    move-result-object v3

    return-object v3

    .line 119
    .end local v0    # "serialNumber":J
    .end local v2    # "userHandle":Landroid/os/UserHandle;
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v1, "UserHandle must be a long integer."

    invoke-virtual {p2, v1}, Lcom/afwsamples/testdpc/util/flags/Flags$Validator;->invalid(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$Validator$ValidationResult;

    move-result-object v1

    return-object v1
.end method

.method private synthetic lambda$run$1(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$Validator;)Lcom/afwsamples/testdpc/util/flags/Flags$Validator$ValidationResult;
    .locals 4
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "validator"    # Lcom/afwsamples/testdpc/util/flags/Flags$Validator;

    .line 134
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/afwsamples/testdpc/UserIconContentProvider;->getFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 136
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_0

    .line 137
    nop

    .line 138
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v3, "Could not open file %s."

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 137
    invoke-virtual {p2, v1}, Lcom/afwsamples/testdpc/util/flags/Flags$Validator;->invalid(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$Validator$ValidationResult;

    move-result-object v1

    return-object v1

    .line 141
    :cond_0
    invoke-virtual {p2, v0}, Lcom/afwsamples/testdpc/util/flags/Flags$Validator;->valid(Ljava/lang/Object;)Lcom/afwsamples/testdpc/util/flags/Flags$Validator$ValidationResult;

    move-result-object v1

    return-object v1
.end method

.method static synthetic lambda$run$2(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$Validator;)Lcom/afwsamples/testdpc/util/flags/Flags$Validator$ValidationResult;
    .locals 6
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "validator"    # Lcom/afwsamples/testdpc/util/flags/Flags$Validator;

    .line 146
    const-string v0, "="

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 147
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, "parts":[Ljava/lang/String;
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$KeyValue;

    .line 149
    array-length v4, v0

    const-string v5, ""

    if-lez v4, :cond_0

    aget-object v2, v0, v2

    goto :goto_0

    :cond_0
    move-object v2, v5

    :goto_0
    array-length v4, v0

    if-le v4, v3, :cond_1

    aget-object v5, v0, v3

    :cond_1
    const/4 v3, 0x0

    invoke-direct {v1, v2, v5, v3}, Lcom/afwsamples/testdpc/ShellCommand$KeyValue;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/afwsamples/testdpc/ShellCommand-IA;)V

    .line 148
    invoke-virtual {p1, v1}, Lcom/afwsamples/testdpc/util/flags/Flags$Validator;->valid(Ljava/lang/Object;)Lcom/afwsamples/testdpc/util/flags/Flags$Validator$ValidationResult;

    move-result-object v1

    return-object v1

    .line 152
    .end local v0    # "parts":[Ljava/lang/String;
    :cond_2
    new-array v0, v3, [Ljava/lang/Object;

    aput-object p0, v0, v2

    .line 153
    const-string v1, "Key-value type must contain \'=\' separator, found only: \'%s\'."

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 152
    invoke-virtual {p1, v0}, Lcom/afwsamples/testdpc/util/flags/Flags$Validator;->invalid(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$Validator$ValidationResult;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$setAppRestrictions$0(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Void;)V
    .locals 3
    .param p1, "settings"    # Landroid/os/Bundle;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "v"    # Ljava/lang/Void;

    .line 1222
    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p2, v1, v0

    const-string v0, "Set %d app restrictions for %s"

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->onSuccess(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$setAppRestrictions$1(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .line 1223
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "Error setting app restrictions for %s"

    invoke-direct {p0, p2, v1, v0}, Lcom/afwsamples/testdpc/ShellCommand;->onError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$setCameraDisabled$0(ZLjava/lang/Void;)V
    .locals 3
    .param p1, "disabled"    # Z
    .param p2, "v"    # Ljava/lang/Void;

    .line 1331
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "Set camera disabled to %b"

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->onSuccess(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$setCameraDisabled$1(ZLjava/lang/Exception;)V
    .locals 3
    .param p1, "disabled"    # Z
    .param p2, "e"    # Ljava/lang/Exception;

    .line 1332
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "Error setting camera disabled to %b"

    invoke-direct {p0, p2, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->onError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$setCrossProfilePackages$0(Ljava/util/Set;Ljava/lang/Void;)V
    .locals 2
    .param p1, "packagesList"    # Ljava/util/Set;
    .param p2, "v"    # Ljava/lang/Void;

    .line 959
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "Allow-listed packages for cross-profile communication set to %s"

    invoke-direct {p0, v1, v0}, Lcom/afwsamples/testdpc/ShellCommand;->onSuccess(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$setCrossProfilePackages$1(Ljava/util/Set;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "packagesList"    # Ljava/util/Set;
    .param p2, "e"    # Ljava/lang/Exception;

    .line 962
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "Error setting allow-listed packages for cross-profile communication to %s"

    invoke-direct {p0, p2, v1, v0}, Lcom/afwsamples/testdpc/ShellCommand;->onError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$setDelegatedScopes$0(Ljava/util/List;Ljava/lang/String;Ljava/lang/Void;)V
    .locals 3
    .param p1, "scopes"    # Ljava/util/List;
    .param p2, "delegatePackage"    # Ljava/lang/String;
    .param p3, "v"    # Ljava/lang/Void;

    .line 1511
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p1, v1, v0

    const/4 v0, 0x2

    aput-object p2, v1, v0

    const-string v0, "Set %d scopes (%s) to app %s"

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->onSuccess(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$setDelegatedScopes$1([Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "scopesArray"    # [Ljava/lang/String;
    .param p2, "delegatePackage"    # Ljava/lang/String;
    .param p3, "e"    # Ljava/lang/Exception;

    .line 1512
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string v1, "Error setting %s scopes to app %s"

    invoke-direct {p0, p3, v1, v0}, Lcom/afwsamples/testdpc/ShellCommand;->onError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$setDeviceOwnerLockScreenInfo$0(Ljava/lang/String;Ljava/lang/Void;)V
    .locals 2
    .param p1, "info"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/Void;

    .line 1295
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "Set lock screen info to \'%s\'"

    invoke-direct {p0, v1, v0}, Lcom/afwsamples/testdpc/ShellCommand;->onSuccess(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$setDeviceOwnerLockScreenInfo$1(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "info"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .line 1296
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "Error setting lock screen info to \'%s\'"

    invoke-direct {p0, p2, v1, v0}, Lcom/afwsamples/testdpc/ShellCommand;->onError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$setEndUserSessionMessage$0(Ljava/lang/String;Ljava/lang/Void;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/Void;

    .line 714
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "Set end user session message to \'%s\'"

    invoke-direct {p0, v1, v0}, Lcom/afwsamples/testdpc/ShellCommand;->onSuccess(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$setEndUserSessionMessage$1(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .line 715
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "Error setting end user session message to \'%s\'"

    invoke-direct {p0, p2, v1, v0}, Lcom/afwsamples/testdpc/ShellCommand;->onError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$setGlobalSetting$0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Void;)V
    .locals 2
    .param p1, "setting"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "v"    # Ljava/lang/Void;

    .line 1395
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string v1, "Set global setting \'%s\' to \'%s\'"

    invoke-direct {p0, v1, v0}, Lcom/afwsamples/testdpc/ShellCommand;->onSuccess(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$setGlobalSetting$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "setting"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "e"    # Ljava/lang/Exception;

    .line 1396
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string v1, "Error setting global setting \'%s\' to \'%s\'"

    invoke-direct {p0, p3, v1, v0}, Lcom/afwsamples/testdpc/ShellCommand;->onError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$setHiddenPackage$0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Void;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "printableStatus"    # Ljava/lang/String;
    .param p3, "v"    # Ljava/lang/Void;

    .line 1130
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string v1, "Set %s as %s"

    invoke-direct {p0, v1, v0}, Lcom/afwsamples/testdpc/ShellCommand;->onSuccess(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$setHiddenPackage$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "printableStatus"    # Ljava/lang/String;
    .param p3, "e"    # Ljava/lang/Exception;

    .line 1131
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string v1, "Error settings %s as %s"

    invoke-direct {p0, p3, v1, v0}, Lcom/afwsamples/testdpc/ShellCommand;->onError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$setKeyguardDisabled$0(ZLjava/lang/Void;)V
    .locals 3
    .param p1, "disabled"    # Z
    .param p2, "v"    # Ljava/lang/Void;

    .line 1307
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "Set keyguard disabled to %b"

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->onSuccess(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$setKeyguardDisabled$1(ZLjava/lang/Exception;)V
    .locals 3
    .param p1, "disabled"    # Z
    .param p2, "e"    # Ljava/lang/Exception;

    .line 1308
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "Error setting keyguard disabled to %b"

    invoke-direct {p0, p2, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->onError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$setKeyguardDisabledFeatures$0(Ljava/lang/String;Ljava/lang/Void;)V
    .locals 2
    .param p1, "features"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/Void;

    .line 1317
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "Set keyguard features to %s"

    invoke-direct {p0, v1, v0}, Lcom/afwsamples/testdpc/ShellCommand;->onSuccess(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$setKeyguardDisabledFeatures$1(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "features"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .line 1318
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "Error settings keyguard features to %s"

    invoke-direct {p0, p2, v1, v0}, Lcom/afwsamples/testdpc/ShellCommand;->onError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$setLocationEnabled$0(ZLjava/lang/Void;)V
    .locals 3
    .param p1, "enabled"    # Z
    .param p2, "v"    # Ljava/lang/Void;

    .line 1279
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "Set location enabled to %b"

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->onSuccess(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$setLocationEnabled$1(ZLjava/lang/Exception;)V
    .locals 3
    .param p1, "enabled"    # Z
    .param p2, "e"    # Ljava/lang/Exception;

    .line 1280
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "Error setting location enabled to %b"

    invoke-direct {p0, p2, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->onError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$setLockTaskFeatures$0(Ljava/lang/String;Ljava/lang/Void;)V
    .locals 2
    .param p1, "features"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/Void;

    .line 1203
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "Set lock tasks features to %s"

    invoke-direct {p0, v1, v0}, Lcom/afwsamples/testdpc/ShellCommand;->onSuccess(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$setLockTaskFeatures$1(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "features"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .line 1204
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "Error settings lock task features to %s"

    invoke-direct {p0, p2, v1, v0}, Lcom/afwsamples/testdpc/ShellCommand;->onError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$setLockTaskPackages$0(Ljava/lang/String;Ljava/lang/Void;)V
    .locals 2
    .param p1, "printableNames"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/Void;

    .line 1184
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "Set lock tasks packages to %s"

    invoke-direct {p0, v1, v0}, Lcom/afwsamples/testdpc/ShellCommand;->onSuccess(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$setLockTaskPackages$1(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "printableNames"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .line 1185
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "Error settings lock task packages to %s"

    invoke-direct {p0, p2, v1, v0}, Lcom/afwsamples/testdpc/ShellCommand;->onError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$setLogoutEnabled$0(ZLjava/lang/Void;)V
    .locals 3
    .param p1, "enabled"    # Z
    .param p2, "v"    # Ljava/lang/Void;

    .line 757
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "Logout enabled set to %b"

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->onSuccess(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$setLogoutEnabled$1(ZLjava/lang/Exception;)V
    .locals 3
    .param p1, "enabled"    # Z
    .param p2, "e"    # Ljava/lang/Exception;

    .line 758
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "Error setting logout enabled to %b"

    invoke-direct {p0, p2, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->onError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$setMaximumFailedPasswordsForWipe$0(ILjava/lang/Void;)V
    .locals 3
    .param p1, "max"    # I
    .param p2, "v"    # Ljava/lang/Void;

    .line 1345
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "Set maximum failed password for wipe to %d"

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->onSuccess(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$setMaximumFailedPasswordsForWipe$1(ILjava/lang/Exception;)V
    .locals 3
    .param p1, "max"    # I
    .param p2, "e"    # Ljava/lang/Exception;

    .line 1346
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "Error setting maximum failed password for wipe to %d"

    invoke-direct {p0, p2, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->onError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$setMeteredDataDisabledPackages$0(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .param p1, "disabledPackages"    # Ljava/util/List;
    .param p2, "v"    # Ljava/util/List;

    .line 1520
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string v1, "Successfully restricted %s (except for %s)"

    invoke-direct {p0, v1, v0}, Lcom/afwsamples/testdpc/ShellCommand;->onSuccess(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$setMeteredDataDisabledPackages$1(Ljava/util/List;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "disabledPackages"    # Ljava/util/List;
    .param p2, "e"    # Ljava/lang/Exception;

    .line 1522
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "Error restricting following packages: %s"

    invoke-direct {p0, p2, v1, v0}, Lcom/afwsamples/testdpc/ShellCommand;->onError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$setNetworkLoggingEnabled$0(ZLjava/lang/Void;)V
    .locals 3
    .param p1, "enabled"    # Z
    .param p2, "v"    # Ljava/lang/Void;

    .line 855
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "Network logging enabled set to %b"

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->onSuccess(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$setNetworkLoggingEnabled$1(ZLjava/lang/Exception;)V
    .locals 3
    .param p1, "enabled"    # Z
    .param p2, "e"    # Ljava/lang/Exception;

    .line 856
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "Error setting network logging enabled to %b"

    invoke-direct {p0, p2, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->onError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$setOrganizationName$0(Ljava/lang/String;Ljava/lang/Void;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/Void;

    .line 924
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "Organization name set to %s"

    invoke-direct {p0, v1, v0}, Lcom/afwsamples/testdpc/ShellCommand;->onSuccess(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$setOrganizationName$1(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .line 925
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "Error setting Organization name to %s"

    invoke-direct {p0, p2, v1, v0}, Lcom/afwsamples/testdpc/ShellCommand;->onError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$setPasswordQuality$0(Ljava/lang/String;ILjava/lang/Void;)V
    .locals 3
    .param p1, "qualityString"    # Ljava/lang/String;
    .param p2, "quality"    # I
    .param p3, "v"    # Ljava/lang/Void;

    .line 1029
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const-string v0, "Set password quality to %s (%d)"

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->onSuccess(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$setPasswordQuality$1(Ljava/lang/String;ILjava/lang/Exception;)V
    .locals 3
    .param p1, "qualityString"    # Ljava/lang/String;
    .param p2, "quality"    # I
    .param p3, "e"    # Ljava/lang/Exception;

    .line 1030
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const-string v0, "Error setting password quality to %s (%d)"

    invoke-direct {p0, p3, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->onError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$setPermissionGrantState$0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Void;)V
    .locals 2
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "grantName"    # Ljava/lang/String;
    .param p4, "v"    # Ljava/lang/Void;

    .line 1261
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const-string v1, "Set %s state on %s to %s"

    invoke-direct {p0, v1, v0}, Lcom/afwsamples/testdpc/ShellCommand;->onSuccess(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$setPermissionGrantState$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "grantName"    # Ljava/lang/String;
    .param p4, "e"    # Ljava/lang/Exception;

    .line 1263
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const-string v1, "Error setting %s state on %s to %s"

    invoke-direct {p0, p4, v1, v0}, Lcom/afwsamples/testdpc/ShellCommand;->onError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$setPersonalAppsSuspended$0(Ljava/lang/String;Ljava/lang/Void;)V
    .locals 2
    .param p1, "printableStatus"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/Void;

    .line 1150
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "Set personal apps to %s"

    invoke-direct {p0, v1, v0}, Lcom/afwsamples/testdpc/ShellCommand;->onSuccess(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$setPersonalAppsSuspended$1(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "printableStatus"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .line 1151
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "Error setting personal apps to %s"

    invoke-direct {p0, p2, v1, v0}, Lcom/afwsamples/testdpc/ShellCommand;->onError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$setRequiredPasswordComplexity$0(Ljava/lang/String;ILjava/lang/Void;)V
    .locals 3
    .param p1, "complexityString"    # Ljava/lang/String;
    .param p2, "complexity"    # I
    .param p3, "v"    # Ljava/lang/Void;

    .line 1057
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const-string v0, "Set required password complexity to %s (%d)"

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->onSuccess(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$setRequiredPasswordComplexity$1(Ljava/lang/String;ILjava/lang/Exception;)V
    .locals 3
    .param p1, "complexityString"    # Ljava/lang/String;
    .param p2, "complexity"    # I
    .param p3, "e"    # Ljava/lang/Exception;

    .line 1059
    nop

    .line 1063
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    .line 1059
    const-string v0, "Error setting required password complexity to %s (%d)"

    invoke-direct {p0, p3, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->onError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$setSecureSetting$0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Void;)V
    .locals 2
    .param p1, "setting"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "v"    # Ljava/lang/Void;

    .line 1389
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string v1, "Set secure setting \'%s\' to \'%s\'"

    invoke-direct {p0, v1, v0}, Lcom/afwsamples/testdpc/ShellCommand;->onSuccess(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$setSecureSetting$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "setting"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "e"    # Ljava/lang/Exception;

    .line 1390
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string v1, "Error setting secure setting \'%s\' to \'%s\'"

    invoke-direct {p0, p3, v1, v0}, Lcom/afwsamples/testdpc/ShellCommand;->onError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$setSecurityLoggingEnabled$0(ZLjava/lang/Void;)V
    .locals 3
    .param p1, "enabled"    # Z
    .param p2, "v"    # Ljava/lang/Void;

    .line 896
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "Security logging enabled set to %b"

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->onSuccess(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$setSecurityLoggingEnabled$1(ZLjava/lang/Exception;)V
    .locals 3
    .param p1, "enabled"    # Z
    .param p2, "e"    # Ljava/lang/Exception;

    .line 897
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "Error setting security logging enabled to %b"

    invoke-direct {p0, p2, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->onError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$setStartUserSessionMessage$0(Ljava/lang/String;Ljava/lang/Void;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/Void;

    .line 701
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "Set start user session message to \'%s\'"

    invoke-direct {p0, v1, v0}, Lcom/afwsamples/testdpc/ShellCommand;->onSuccess(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$setStartUserSessionMessage$1(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .line 702
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "Error setting start user session message to \'%s\'"

    invoke-direct {p0, p2, v1, v0}, Lcom/afwsamples/testdpc/ShellCommand;->onError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$setStatusBarDisabled$0(ZLjava/lang/Void;)V
    .locals 3
    .param p1, "disabled"    # Z
    .param p2, "v"    # Ljava/lang/Void;

    .line 1356
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "Set status bar disabled to %b"

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->onSuccess(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$setStatusBarDisabled$1(ZLjava/lang/Exception;)V
    .locals 3
    .param p1, "disabled"    # Z
    .param p2, "e"    # Ljava/lang/Exception;

    .line 1357
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "Error setting status bar disabled to %b"

    invoke-direct {p0, p2, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->onError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$setSuspendedPackages$0(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .param p1, "printableNames"    # Ljava/lang/String;
    .param p2, "printableStatus"    # Ljava/lang/String;
    .param p3, "v"    # [Ljava/lang/String;

    .line 1107
    nop

    .line 1108
    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const/4 v0, 0x2

    aput-object p2, v1, v0

    .line 1107
    const-string v0, "Set %s (but not %s) to %s"

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->onSuccess(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$setSuspendedPackages$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "printableNames"    # Ljava/lang/String;
    .param p2, "printableStatus"    # Ljava/lang/String;
    .param p3, "e"    # Ljava/lang/Exception;

    .line 1109
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string v1, "Error setting %s to %s"

    invoke-direct {p0, p3, v1, v0}, Lcom/afwsamples/testdpc/ShellCommand;->onError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$setUninstallBlocked$0(ZLjava/lang/String;Ljava/lang/Void;)V
    .locals 3
    .param p1, "uninstallBlocked"    # Z
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "v"    # Ljava/lang/Void;

    .line 1375
    if-eqz p1, :cond_0

    const-string v0, "Blocked"

    goto :goto_0

    :cond_0
    const-string v0, "Unblocked"

    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p2, v1, v0

    const-string v0, "%s uninstall of pacakge %s"

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->onSuccess(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$setUninstallBlocked$1(Ljava/lang/String;ZLjava/lang/Exception;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uninstallBlocked"    # Z
    .param p3, "e"    # Ljava/lang/Exception;

    .line 1377
    nop

    .line 1378
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    .line 1377
    const-string v0, "Error setting uninstal-blocked of pacakge %s to %b"

    invoke-direct {p0, p3, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->onError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$setUsbDataSignalingEnabled$0(ZLjava/lang/Void;)V
    .locals 3
    .param p1, "enabled"    # Z
    .param p2, "v"    # Ljava/lang/Void;

    .line 1088
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "USB data signaling set to %b"

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->onSuccess(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$setUsbDataSignalingEnabled$1(ZLjava/lang/Exception;)V
    .locals 3
    .param p1, "enabled"    # Z
    .param p2, "e"    # Ljava/lang/Exception;

    .line 1089
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "Error setting USB data signaling to %b"

    invoke-direct {p0, p2, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->onError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$setUserControlDisabledPackages$0(Ljava/util/List;Ljava/lang/Void;)V
    .locals 2
    .param p1, "packagesList"    # Ljava/util/List;
    .param p2, "v"    # Ljava/lang/Void;

    .line 943
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "User-control disabled packages set to %s"

    invoke-direct {p0, v1, v0}, Lcom/afwsamples/testdpc/ShellCommand;->onSuccess(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$setUserControlDisabledPackages$1(Ljava/util/List;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "packagesList"    # Ljava/util/List;
    .param p2, "e"    # Ljava/lang/Exception;

    .line 944
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "Error setting User-control disabled packages to %s"

    invoke-direct {p0, p2, v1, v0}, Lcom/afwsamples/testdpc/ShellCommand;->onError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$setUserIcon$0(Ljava/lang/String;Ljava/lang/Void;)V
    .locals 2
    .param p1, "absolutePath"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/Void;

    .line 693
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "User icon created from file %s"

    invoke-direct {p0, v1, v0}, Lcom/afwsamples/testdpc/ShellCommand;->onSuccess(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$setUserIcon$1(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "absolutePath"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .line 694
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "Error creating user icon from file %s"

    invoke-direct {p0, p2, v1, v0}, Lcom/afwsamples/testdpc/ShellCommand;->onError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$setUserRestriction$0(Ljava/lang/String;ZLjava/lang/Void;)V
    .locals 3
    .param p1, "userRestriction"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .param p3, "v"    # Ljava/lang/Void;

    .line 800
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const-string v0, "User restriction \'%s\' set to %b"

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->onSuccess(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$setUserRestriction$1(Ljava/lang/String;ZLjava/lang/Exception;)V
    .locals 3
    .param p1, "userRestriction"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .param p3, "e"    # Ljava/lang/Exception;

    .line 801
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const-string v0, "Error setting user restriction \'%s\' to %b"

    invoke-direct {p0, p3, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->onError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$setUserRestrictionOnParent$0(Ljava/lang/String;ZLjava/lang/Void;)V
    .locals 3
    .param p1, "userRestriction"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .param p3, "v"    # Ljava/lang/Void;

    .line 811
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const-string v0, "User restriction \'%s\' set to %b"

    invoke-direct {p0, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->onSuccess(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$setUserRestrictionOnParent$1(Ljava/lang/String;ZLjava/lang/Exception;)V
    .locals 3
    .param p1, "userRestriction"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .param p3, "e"    # Ljava/lang/Exception;

    .line 813
    nop

    .line 814
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    .line 813
    const-string v0, "Error setting parent user restriction \'%s\' to %b"

    invoke-direct {p0, p3, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand;->onError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$startUserInBackground$0(Landroid/os/UserHandle;Ljava/lang/Integer;)V
    .locals 2
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .param p2, "v"    # Ljava/lang/Integer;

    .line 740
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "User %s started in background"

    invoke-direct {p0, v1, v0}, Lcom/afwsamples/testdpc/ShellCommand;->onSuccess(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$startUserInBackground$1(Landroid/os/UserHandle;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .param p2, "e"    # Ljava/lang/Exception;

    .line 741
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "Error starting user %s in background"

    invoke-direct {p0, p2, v1, v0}, Lcom/afwsamples/testdpc/ShellCommand;->onError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$stopUser$0(Landroid/os/UserHandle;Ljava/lang/Integer;)V
    .locals 2
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .param p2, "v"    # Ljava/lang/Integer;

    .line 747
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "User %s stopped"

    invoke-direct {p0, v1, v0}, Lcom/afwsamples/testdpc/ShellCommand;->onSuccess(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$stopUser$1(Landroid/os/UserHandle;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .param p2, "e"    # Ljava/lang/Exception;

    .line 748
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "Error stopping user %s"

    invoke-direct {p0, p2, v1, v0}, Lcom/afwsamples/testdpc/ShellCommand;->onError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$switchUser$0(Landroid/os/UserHandle;Ljava/lang/Void;)V
    .locals 2
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .param p2, "v"    # Ljava/lang/Void;

    .line 733
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "User %s switched"

    invoke-direct {p0, v1, v0}, Lcom/afwsamples/testdpc/ShellCommand;->onSuccess(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$switchUser$1(Landroid/os/UserHandle;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .param p2, "e"    # Ljava/lang/Exception;

    .line 734
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "Error switching user %s"

    invoke-direct {p0, p2, v1, v0}, Lcom/afwsamples/testdpc/ShellCommand;->onError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$transferOwnership$0(Ljava/lang/String;Ljava/lang/Void;)V
    .locals 2
    .param p1, "flatTarget"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/Void;

    .line 1080
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "Ownership transferred to %s"

    invoke-direct {p0, v1, v0}, Lcom/afwsamples/testdpc/ShellCommand;->onSuccess(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$transferOwnership$1(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "flatTarget"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .line 1081
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "Error transferring ownership to %s"

    invoke-direct {p0, p2, v1, v0}, Lcom/afwsamples/testdpc/ShellCommand;->onError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$wipeData$0(Ljava/lang/Void;)V
    .locals 2
    .param p1, "v"    # Ljava/lang/Void;

    .line 838
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Data wiped"

    invoke-direct {p0, v1, v0}, Lcom/afwsamples/testdpc/ShellCommand;->onSuccess(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$wipeData$1(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .line 838
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Error wiping data"

    invoke-direct {p0, p1, v1, v0}, Lcom/afwsamples/testdpc/ShellCommand;->onError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private listDisabledSystemApps()V
    .locals 4

    .line 1170
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v0}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->getDisabledSystemApps()Ljava/util/List;

    move-result-object v0

    .line 1172
    .local v0, "disabledSystemApps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "listDisabledSystemApps(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TestDPCShellCommand"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    const-string v1, "disabled system app"

    invoke-direct {p0, v1, v0}, Lcom/afwsamples/testdpc/ShellCommand;->printCollection(Ljava/lang/String;Ljava/util/Collection;)V

    .line 1175
    return-void
.end method

.method private listForegroundUsers()V
    .locals 8

    .line 1010
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v0}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->listForegroundAffiliatedUsers()Ljava/util/List;

    move-result-object v0

    .line 1011
    .local v0, "users":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1012
    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    const-string v2, "none"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1013
    return-void

    .line 1015
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1016
    .local v1, "size":I
    iget-object v2, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    if-le v1, v4, :cond_1

    const-string v5, "s"

    goto :goto_0

    :cond_1
    const-string v5, ""

    :goto_0
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    aput-object v5, v6, v4

    const-string v3, "%d user%s:\n"

    invoke-virtual {v2, v3, v6}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1017
    new-instance v2, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda164;

    invoke-direct {v2, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda164;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    invoke-static {v0, v2}, Lj$/lang/Iterable$-EL;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    .line 1018
    return-void
.end method

.method private listUserRestrictions()V
    .locals 2

    .line 790
    const-string v0, "TestDPCShellCommand"

    const-string v1, "listUserRestrictions()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v0}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->getUserRestrictions()Ljava/util/Set;

    move-result-object v0

    const-string/jumbo v1, "user restriction"

    invoke-direct {p0, v1, v0}, Lcom/afwsamples/testdpc/ShellCommand;->printCollection(Ljava/lang/String;Ljava/util/Collection;)V

    .line 793
    return-void
.end method

.method private lockNow(Ljava/lang/Integer;)V
    .locals 4
    .param p1, "flags"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flags"
        }
    .end annotation

    .line 818
    const-string v0, "TestDPCShellCommand"

    if-nez p1, :cond_0

    .line 819
    const-string v1, "lockNow()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda91;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda91;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    new-instance v2, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda92;

    invoke-direct {v2, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda92;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    invoke-interface {v0, v1, v2}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->lockNow(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 823
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lockNow("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    .line 825
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-instance v2, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda93;

    invoke-direct {v2, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda93;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    new-instance v3, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda94;

    invoke-direct {v3, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda94;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    .line 824
    invoke-interface {v0, v1, v2, v3}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->lockNow(ILjava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 827
    :goto_0
    return-void
.end method

.method private logoutUser()V
    .locals 4

    .line 762
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 763
    .local v0, "userHandle":Landroid/os/UserHandle;
    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v2, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda140;

    invoke-direct {v2, p0, v0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda140;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Landroid/os/UserHandle;)V

    new-instance v3, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda141;

    invoke-direct {v3, p0, v0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda141;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Landroid/os/UserHandle;)V

    invoke-interface {v1, v2, v3}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->logoutUser(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 766
    return-void
.end method

.method private varargs onError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "pattern"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "e",
            "pattern",
            "args"
        }
    .end annotation

    .line 1580
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1581
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "TestDPCShellCommand"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1582
    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const-string v3, "%s: %s\n"

    invoke-virtual {v1, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1583
    return-void
.end method

.method private static varargs onErrorLog(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "e"    # Ljava/lang/Exception;
    .param p1, "template"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "e",
            "template",
            "args"
        }
    .end annotation

    .line 1570
    const-string v0, "TestDPCShellCommand"

    invoke-static {v0, p0, p1, p2}, Lcom/afwsamples/testdpc/common/Util;->onErrorLog(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1571
    return-void
.end method

.method private varargs onSuccess(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pattern",
            "args"
        }
    .end annotation

    .line 1574
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1575
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "TestDPCShellCommand"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1576
    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1577
    return-void
.end method

.method private static varargs onSuccessLog(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "template"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "template",
            "args"
        }
    .end annotation

    .line 1566
    const-string v0, "TestDPCShellCommand"

    invoke-static {v0, p0, p1}, Lcom/afwsamples/testdpc/common/Util;->onSuccessLog(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1567
    return-void
.end method

.method private static permittedToString(Z)Ljava/lang/String;
    .locals 1
    .param p0, "permitted"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "permitted"
        }
    .end annotation

    .line 106
    if-eqz p0, :cond_0

    const-string v0, "PERMITTED"

    goto :goto_0

    :cond_0
    const-string v0, "NOT PERMITTED"

    :goto_0
    return-object v0
.end method

.method private post(Ljava/lang/Runnable;)V
    .locals 5
    .param p1, "r"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "r"
        }
    .end annotation

    .line 1555
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mHandler:Landroid/os/Handler;

    const-string v1, "TestDPCShellCommand"

    if-nez v0, :cond_0

    .line 1556
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "ShellCommandThread"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 1557
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1558
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1559
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/afwsamples/testdpc/ShellCommand;->mHandler:Landroid/os/Handler;

    .line 1561
    .end local v0    # "handlerThread":Landroid/os/HandlerThread;
    :cond_0
    const-string v0, "posting runnable"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1562
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1563
    return-void
.end method

.method private printAppRestrictions(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "settings"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "packageName",
            "source",
            "settings"
        }
    .end annotation

    .line 1242
    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Landroid/os/Bundle;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_2

    .line 1246
    :cond_0
    invoke-virtual {p3}, Landroid/os/Bundle;->size()I

    move-result v3

    .line 1247
    .local v3, "size":I
    if-le v3, v2, :cond_1

    const-string v4, "s"

    goto :goto_0

    :cond_1
    const-string v4, ""

    .line 1248
    .local v4, "pluralSuffix":Ljava/lang/String;
    :goto_0
    iget-object v5, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v6, v7, v0

    aput-object v4, v7, v2

    aput-object p2, v7, v1

    const/4 v6, 0x3

    aput-object p1, v7, v6

    const-string v6, "%d app restriction%s%s for %s\n"

    invoke-virtual {v5, v6, v7}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1249
    invoke-virtual {p3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1250
    .local v6, "key":Ljava/lang/String;
    invoke-virtual {p3, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 1251
    .local v7, "value":Ljava/lang/Object;
    iget-object v8, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    new-array v9, v1, [Ljava/lang/Object;

    aput-object v6, v9, v0

    aput-object v7, v9, v2

    const-string v10, "  %s = %s\n"

    invoke-virtual {v8, v10, v9}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1252
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/Object;
    goto :goto_1

    .line 1253
    :cond_2
    return-void

    .line 1243
    .end local v3    # "size":I
    .end local v4    # "pluralSuffix":Ljava/lang/String;
    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v0

    aput-object p1, v1, v2

    const-string v0, "No app restrictions (from %s) for %s\n"

    invoke-virtual {v3, v0, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1244
    return-void
.end method

.method private printCollection(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 7
    .param p1, "nameOnSingular"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nameOnSingular",
            "collection"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1586
    .local p2, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 1587
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const-string v1, "No %ss\n"

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1588
    return-void

    .line 1590
    :cond_0
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    .line 1591
    .local v0, "size":I
    iget-object v3, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    if-ne v0, v2, :cond_1

    const-string v5, ""

    goto :goto_0

    :cond_1
    const-string v5, "s"

    :goto_0
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v1

    aput-object p1, v6, v2

    const/4 v1, 0x2

    aput-object v5, v6, v1

    const-string v1, "%d %s%s:\n"

    invoke-virtual {v3, v1, v6}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1592
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda85;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda85;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    invoke-static {p2, v1}, Lj$/lang/Iterable$-EL;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    .line 1593
    return-void
.end method

.method private printSecurityLogs(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "events"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/admin/SecurityLog$SecurityEvent;",
            ">;)V"
        }
    .end annotation

    .line 1603
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/SecurityLog$SecurityEvent;>;"
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 1607
    :cond_0
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const-string v1, "%d events:\n"

    invoke-virtual {v0, v1, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1608
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1609
    .local v0, "formatter":Ljava/text/SimpleDateFormat;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 1610
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/SecurityLog$SecurityEvent;

    .line 1611
    .local v3, "event":Landroid/app/admin/SecurityLog$SecurityEvent;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1612
    .local v5, "sb":Ljava/lang/StringBuilder;
    sget v6, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v7, 0x1c

    if-lt v6, v7, :cond_1

    .line 1613
    invoke-virtual {v3}, Landroid/app/admin/SecurityLog$SecurityEvent;->getId()J

    move-result-wide v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1615
    :cond_1
    invoke-virtual {v3}, Landroid/app/admin/SecurityLog$SecurityEvent;->getTag()I

    move-result v6

    invoke-static {v6}, Lcom/afwsamples/testdpc/policy/SecurityLogsFragment;->getStringEventTagFromId(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1616
    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/util/Date;

    sget-object v8, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1617
    invoke-virtual {v3}, Landroid/app/admin/SecurityLog$SecurityEvent;->getTimeNanos()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1618
    const-string v7, "): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1619
    invoke-virtual {v3}, Landroid/app/admin/SecurityLog$SecurityEvent;->getData()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/afwsamples/testdpc/policy/SecurityLogsFragment;->printData(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 1620
    iget-object v6, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v2, [Ljava/lang/Object;

    aput-object v7, v8, v4

    const-string v7, "%s\n"

    invoke-virtual {v6, v7, v8}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1609
    .end local v3    # "event":Landroid/app/admin/SecurityLog$SecurityEvent;
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1622
    .end local v1    # "i":I
    :cond_2
    return-void

    .line 1604
    .end local v0    # "formatter":Ljava/text/SimpleDateFormat;
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    const-string v1, "N/A"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1605
    return-void
.end method

.method private printTime(J)V
    .locals 5
    .param p1, "time"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "time"
        }
    .end annotation

    .line 1596
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    new-instance v0, Ljava/sql/Date;

    invoke-direct {v0, p1, p2}, Ljava/sql/Date;-><init>(J)V

    invoke-virtual {v0}, Ljava/sql/Date;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "N/A"

    .line 1597
    .local v0, "formattedDate":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v2, 0x1

    aput-object v0, v3, v2

    const-string v2, "%d (%s)\n"

    invoke-virtual {v1, v2, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1598
    return-void
.end method

.method private reboot()V
    .locals 3

    .line 830
    const-string v0, "TestDPCShellCommand"

    const-string v1, "reboot()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda108;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda108;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    new-instance v2, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda109;

    invoke-direct {v2, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda109;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    invoke-interface {v0, v1, v2}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->reboot(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 833
    return-void
.end method

.method private removeActiveAdmin()V
    .locals 4

    .line 974
    const-string v0, "TestDPCShellCommand"

    const-string v1, "removeActiveAdmin()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v0}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->getAdmin()Landroid/content/ComponentName;

    move-result-object v0

    .line 977
    .local v0, "admin":Landroid/content/ComponentName;
    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v2, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda129;

    invoke-direct {v2, p0, v0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda129;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Landroid/content/ComponentName;)V

    new-instance v3, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda130;

    invoke-direct {v3, p0, v0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda130;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Landroid/content/ComponentName;)V

    invoke-interface {v1, v2, v3}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->removeActiveAdmin(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 980
    return-void
.end method

.method private removeKeyPair(Ljava/lang/String;)V
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "alias"
        }
    .end annotation

    .line 1410
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda86;

    invoke-direct {v1, p0, p1}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda86;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;)V

    new-instance v2, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda87;

    invoke-direct {v2, p0, p1}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda87;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;)V

    invoke-interface {v0, p1, v1, v2}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->removeKeyPair(Ljava/lang/String;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 1413
    return-void
.end method

.method private removeUser(Landroid/os/UserHandle;)V
    .locals 3
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userHandle"
        }
    .end annotation

    .line 724
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda138;

    invoke-direct {v1, p0, p1}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda138;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Landroid/os/UserHandle;)V

    new-instance v2, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda139;

    invoke-direct {v2, p0, p1}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda139;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Landroid/os/UserHandle;)V

    invoke-interface {v0, p1, v1, v2}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->removeUser(Landroid/os/UserHandle;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 728
    return-void
.end method

.method private requestBugreport()V
    .locals 3

    .line 842
    const-string v0, "TestDPCShellCommand"

    const-string v1, "requestBugreport()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda168;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda168;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    new-instance v2, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda169;

    invoke-direct {v2, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda169;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    invoke-interface {v0, v1, v2}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->requestBugreport(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 845
    return-void
.end method

.method private resetPasswordWithToken(Ljava/lang/String;)V
    .locals 5
    .param p1, "newPassword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newPassword"
        }
    .end annotation

    .line 1486
    invoke-direct {p0}, Lcom/afwsamples/testdpc/ShellCommand;->getActiveResetPasswordToken()[B

    move-result-object v0

    .line 1488
    .local v0, "token":[B
    const-string v1, "TestDPCShellCommand"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 1489
    const-string v3, "Cannot reset password without token"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1490
    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    const-string v3, "Cannot reset password without token\n"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1491
    return-void

    .line 1494
    :cond_0
    nop

    .line 1495
    invoke-direct {p0}, Lcom/afwsamples/testdpc/ShellCommand;->dpm()Landroid/app/admin/DevicePolicyManager;

    move-result-object v3

    iget-object v4, p0, Lcom/afwsamples/testdpc/ShellCommand;->mContext:Landroid/content/Context;

    .line 1497
    invoke-static {v4}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v4

    .line 1496
    invoke-virtual {v3, v4, p1, v0, v2}, Landroid/app/admin/DevicePolicyManager;->resetPasswordWithToken(Landroid/content/ComponentName;Ljava/lang/String;[BI)Z

    move-result v3

    .line 1499
    .local v3, "result":Z
    if-nez v3, :cond_1

    .line 1500
    const-string v4, "Error resetting password"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1501
    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    const-string v4, "Error resetting password\n"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1502
    return-void

    .line 1504
    :cond_1
    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    const-string v2, "Password reset to %s\n"

    invoke-virtual {v1, v2, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1506
    return-void
.end method

.method private retrieveNetworkLogs(J)V
    .locals 19
    .param p1, "batchToken"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "batchToken"
        }
    .end annotation

    .line 868
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    move-wide/from16 v2, p1

    invoke-interface {v1, v2, v3}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->retrieveNetworkLogs(J)Ljava/util/List;

    move-result-object v1

    .line 869
    .local v1, "events":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/NetworkEvent;>;"
    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_2

    .line 873
    :cond_0
    iget-object v4, v0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    const-string v5, "%d events:\n"

    invoke-virtual {v4, v5, v7}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 874
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 875
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/admin/NetworkEvent;

    .line 876
    .local v5, "event":Landroid/app/admin/NetworkEvent;
    instance-of v7, v5, Landroid/app/admin/DnsEvent;

    const/4 v9, 0x4

    const/4 v10, 0x5

    const/4 v11, 0x3

    const/4 v12, 0x2

    if-eqz v7, :cond_1

    .line 877
    move-object v7, v5

    check-cast v7, Landroid/app/admin/DnsEvent;

    .line 878
    .local v7, "de":Landroid/app/admin/DnsEvent;
    invoke-virtual {v7}, Landroid/app/admin/DnsEvent;->getInetAddresses()Ljava/util/List;

    move-result-object v13

    invoke-static {v13}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v13

    new-instance v14, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda172;

    invoke-direct {v14}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda172;-><init>()V

    .line 879
    invoke-interface {v13, v14}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v13

    const-string v14, ","

    invoke-static {v14}, Lj$/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Lj$/util/stream/Collector;

    move-result-object v14

    invoke-interface {v13, v14}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 880
    .local v13, "addresses":Ljava/lang/String;
    iget-object v14, v0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    .line 881
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v5}, Landroid/app/admin/NetworkEvent;->getId()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual {v5}, Landroid/app/admin/NetworkEvent;->getPackageName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v7}, Landroid/app/admin/DnsEvent;->getHostname()Ljava/lang/String;

    move-result-object v18

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v15, v10, v8

    aput-object v16, v10, v6

    aput-object v17, v10, v12

    aput-object v18, v10, v11

    aput-object v13, v10, v9

    .line 880
    const-string v9, "\t%d:DnsEvent id=%d pkg=%s hostname=%s addresses=%s\n"

    invoke-virtual {v14, v9, v10}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 882
    .end local v7    # "de":Landroid/app/admin/DnsEvent;
    .end local v13    # "addresses":Ljava/lang/String;
    goto :goto_1

    :cond_1
    instance-of v7, v5, Landroid/app/admin/ConnectEvent;

    if-eqz v7, :cond_2

    .line 883
    move-object v7, v5

    check-cast v7, Landroid/app/admin/ConnectEvent;

    .line 884
    .local v7, "ce":Landroid/app/admin/ConnectEvent;
    iget-object v13, v0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    .line 885
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v7}, Landroid/app/admin/ConnectEvent;->getId()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v7}, Landroid/app/admin/ConnectEvent;->getPackageName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v7}, Landroid/app/admin/ConnectEvent;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v17

    invoke-virtual {v7}, Landroid/app/admin/ConnectEvent;->getPort()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v14, v10, v8

    aput-object v15, v10, v6

    aput-object v16, v10, v12

    aput-object v17, v10, v11

    aput-object v18, v10, v9

    .line 884
    const-string v9, "\t%d:ConnectEvent id=%d pkg=%s address=%s port=%d\n"

    invoke-virtual {v13, v9, v10}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 886
    .end local v7    # "ce":Landroid/app/admin/ConnectEvent;
    goto :goto_1

    .line 887
    :cond_2
    iget-object v7, v0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5}, Landroid/app/admin/NetworkEvent;->getId()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v5}, Landroid/app/admin/NetworkEvent;->getPackageName()Ljava/lang/String;

    move-result-object v13

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v9, v11, v8

    aput-object v10, v11, v6

    aput-object v13, v11, v12

    const-string v9, "\t%d:Unknown id=%d pkg=%s\n"

    invoke-virtual {v7, v9, v11}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 874
    .end local v5    # "event":Landroid/app/admin/NetworkEvent;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 890
    .end local v4    # "i":I
    :cond_3
    return-void

    .line 870
    :cond_4
    :goto_2
    iget-object v4, v0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    const-string v5, "N/A"

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 871
    return-void
.end method

.method private retrievePreRebootSecurityLogs()V
    .locals 1

    .line 913
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v0}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->retrievePreRebootSecurityLogs()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/ShellCommand;->printSecurityLogs(Ljava/util/List;)V

    .line 914
    return-void
.end method

.method private retrieveSecurityLogs()V
    .locals 1

    .line 909
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v0}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->retrieveSecurityLogs()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/ShellCommand;->printSecurityLogs(Ljava/util/List;)V

    .line 910
    return-void
.end method

.method private revokeKeyPairFromApp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "alias",
            "packageName"
        }
    .end annotation

    .line 1441
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda131;

    invoke-direct {v1, p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda131;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda132;

    invoke-direct {v2, p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda132;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->revokeKeyPairFromApp(Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 1450
    return-void
.end method

.method private setAffiliationIds([Ljava/lang/String;)V
    .locals 4
    .param p1, "ids"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ids"
        }
    .end annotation

    .line 778
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/ShellCommand;->getOrderedSortedSet([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 779
    .local v0, "idSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAffiliationIds(): ids="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TestDPCShellCommand"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v1, v0}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->setAffiliationIds(Ljava/util/Set;)V

    .line 782
    invoke-direct {p0}, Lcom/afwsamples/testdpc/ShellCommand;->getAffiliationIds()V

    .line 783
    return-void
.end method

.method private setAppRestrictions(Ljava/lang/String;[Lcom/afwsamples/testdpc/ShellCommand$KeyValue;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "restrictions"    # [Lcom/afwsamples/testdpc/ShellCommand$KeyValue;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "packageName",
            "restrictions"
        }
    .end annotation

    .line 1215
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1216
    .local v0, "settings":Landroid/os/Bundle;
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p2, v2

    .line 1217
    .local v3, "restriction":Lcom/afwsamples/testdpc/ShellCommand$KeyValue;
    invoke-static {v3}, Lcom/afwsamples/testdpc/ShellCommand$KeyValue;->-$$Nest$fgetkey(Lcom/afwsamples/testdpc/ShellCommand$KeyValue;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Lcom/afwsamples/testdpc/ShellCommand$KeyValue;->-$$Nest$fgetvalue(Lcom/afwsamples/testdpc/ShellCommand$KeyValue;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1216
    .end local v3    # "restriction":Lcom/afwsamples/testdpc/ShellCommand$KeyValue;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1219
    :cond_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v2, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda158;

    invoke-direct {v2, p0, v0, p1}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda158;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Landroid/os/Bundle;Ljava/lang/String;)V

    new-instance v3, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda159;

    invoke-direct {v3, p0, p1}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda159;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;)V

    invoke-interface {v1, p1, v0, v2, v3}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 1224
    return-void
.end method

.method private setCameraDisabled(Z)V
    .locals 3
    .param p1, "disabled"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "disabled"
        }
    .end annotation

    .line 1329
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda0;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Z)V

    new-instance v2, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda111;

    invoke-direct {v2, p0, p1}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda111;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Z)V

    invoke-interface {v0, p1, v1, v2}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->setCameraDisabled(ZLjava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 1333
    return-void
.end method

.method private setCrossProfilePackages([Ljava/lang/String;)V
    .locals 4
    .param p1, "packages"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packages"
        }
    .end annotation

    .line 953
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/ShellCommand;->getOrderedSortedSet([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 954
    .local v0, "packagesList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCrossProfilePackages("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TestDPCShellCommand"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v2, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda147;

    invoke-direct {v2, p0, v0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda147;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Ljava/util/Set;)V

    new-instance v3, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda148;

    invoke-direct {v3, p0, v0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda148;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Ljava/util/Set;)V

    invoke-interface {v1, v0, v2, v3}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->setCrossProfilePackages(Ljava/util/Set;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 966
    return-void
.end method

.method private setDelegatedScopes(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .param p1, "delegatePackage"    # Ljava/lang/String;
    .param p2, "scopesArray"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "delegatePackage",
            "scopesArray"
        }
    .end annotation

    .line 1509
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1510
    .local v0, "scopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v2, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda160;

    invoke-direct {v2, p0, v0, p1}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda160;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Ljava/util/List;Ljava/lang/String;)V

    new-instance v3, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda161;

    invoke-direct {v3, p0, p2, p1}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda161;-><init>(Lcom/afwsamples/testdpc/ShellCommand;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, p1, v0, v2, v3}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->setDelegatedScopes(Ljava/lang/String;Ljava/util/List;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 1513
    return-void
.end method

.method private setDeviceOwnerLockScreenInfo(Ljava/lang/String;)V
    .locals 3
    .param p1, "info"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    .line 1293
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda186;

    invoke-direct {v1, p0, p1}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda186;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;)V

    new-instance v2, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda187;

    invoke-direct {v2, p0, p1}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda187;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;)V

    invoke-interface {v0, p1, v1, v2}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->setDeviceOwnerLockScreenInfo(Ljava/lang/CharSequence;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 1297
    return-void
.end method

.method private setEndUserSessionMessage(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 711
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setEndUserSessionMessage(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TestDPCShellCommand"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda170;

    invoke-direct {v1, p0, p1}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda170;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;)V

    new-instance v2, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda171;

    invoke-direct {v2, p0, p1}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda171;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;)V

    invoke-interface {v0, p1, v1, v2}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->setEndUserSessionMessage(Ljava/lang/CharSequence;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 716
    return-void
.end method

.method private setGlobalSetting(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "setting"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "setting",
            "value"
        }
    .end annotation

    .line 1394
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda22;

    invoke-direct {v1, p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda22;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda33;

    invoke-direct {v2, p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda33;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->setGlobalSetting(Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 1397
    return-void
.end method

.method private setHiddenPackage(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "hidden"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "packageName",
            "hidden"
        }
    .end annotation

    .line 1124
    invoke-static {p2}, Lcom/afwsamples/testdpc/ShellCommand;->hiddenToString(Z)Ljava/lang/String;

    move-result-object v0

    .line 1126
    .local v0, "printableStatus":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHiddenPackages("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TestDPCShellCommand"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v2, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda104;

    invoke-direct {v2, p0, p1, v0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda104;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda105;

    invoke-direct {v3, p0, p1, v0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda105;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, p1, p2, v2, v3}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->setApplicationHidden(Ljava/lang/String;ZLjava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 1132
    return-void
.end method

.method private setKeyguardDisabled(Z)V
    .locals 3
    .param p1, "disabled"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "disabled"
        }
    .end annotation

    .line 1305
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda127;

    invoke-direct {v1, p0, p1}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda127;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Z)V

    new-instance v2, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda128;

    invoke-direct {v2, p0, p1}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda128;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Z)V

    invoke-interface {v0, p1, v1, v2}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->setKeyguardDisabled(ZLjava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 1309
    return-void
.end method

.method private setKeyguardDisabledFeatures(I)V
    .locals 4
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flags"
        }
    .end annotation

    .line 1312
    invoke-static {p1}, Lcom/afwsamples/testdpc/common/Util;->keyguardDisabledFeaturesToString(I)Ljava/lang/String;

    move-result-object v0

    .line 1313
    .local v0, "features":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setKeyguardDisabledFeatures("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): setting to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TestDPCShellCommand"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v2, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda44;

    invoke-direct {v2, p0, v0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda44;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;)V

    new-instance v3, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda55;

    invoke-direct {v3, p0, v0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda55;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;)V

    invoke-interface {v1, p1, v2, v3}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->setKeyguardDisabledFeatures(ILjava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 1319
    return-void
.end method

.method private setLocationEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 1277
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda102;

    invoke-direct {v1, p0, p1}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda102;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Z)V

    new-instance v2, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda103;

    invoke-direct {v2, p0, p1}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda103;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Z)V

    invoke-interface {v0, p1, v1, v2}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->setLocationEnabled(ZLjava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 1281
    return-void
.end method

.method private setLockTaskFeatures(I)V
    .locals 4
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flags"
        }
    .end annotation

    .line 1198
    invoke-static {p1}, Lcom/afwsamples/testdpc/common/Util;->lockTaskFeaturesToString(I)Ljava/lang/String;

    move-result-object v0

    .line 1199
    .local v0, "features":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLockTaskFeatures("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): setting to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TestDPCShellCommand"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v2, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda96;

    invoke-direct {v2, p0, v0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda96;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;)V

    new-instance v3, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda97;

    invoke-direct {v3, p0, v0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda97;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;)V

    invoke-interface {v1, p1, v2, v3}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->setLockTaskFeatures(ILjava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 1205
    return-void
.end method

.method private setLockTaskPackages([Ljava/lang/String;)V
    .locals 4
    .param p1, "packages"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packages"
        }
    .end annotation

    .line 1178
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1180
    .local v0, "printableNames":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLockTaskPackages(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TestDPCShellCommand"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v2, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda89;

    invoke-direct {v2, p0, v0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda89;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;)V

    new-instance v3, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda90;

    invoke-direct {v3, p0, v0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda90;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;)V

    invoke-interface {v1, p1, v2, v3}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->setLockTaskPackages([Ljava/lang/String;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 1186
    return-void
.end method

.method private setLogoutEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 756
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda153;

    invoke-direct {v1, p0, p1}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda153;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Z)V

    new-instance v2, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda154;

    invoke-direct {v2, p0, p1}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda154;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Z)V

    invoke-interface {v0, p1, v1, v2}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->setLogoutEnabled(ZLjava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 759
    return-void
.end method

.method private setMaximumFailedPasswordsForWipe(I)V
    .locals 3
    .param p1, "max"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "max"
        }
    .end annotation

    .line 1344
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda120;

    invoke-direct {v1, p0, p1}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda120;-><init>(Lcom/afwsamples/testdpc/ShellCommand;I)V

    new-instance v2, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda121;

    invoke-direct {v2, p0, p1}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda121;-><init>(Lcom/afwsamples/testdpc/ShellCommand;I)V

    invoke-interface {v0, p1, v1, v2}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->setMaximumFailedPasswordsForWipe(ILjava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 1347
    return-void
.end method

.method private setMeteredDataDisabledPackages([Ljava/lang/String;)V
    .locals 4
    .param p1, "packageNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageNames"
        }
    .end annotation

    .line 1516
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1517
    .local v0, "disabledPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v2, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda114;

    invoke-direct {v2, p0, v0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda114;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Ljava/util/List;)V

    new-instance v3, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda115;

    invoke-direct {v3, p0, v0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda115;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Ljava/util/List;)V

    invoke-interface {v1, v0, v2, v3}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->setMeteredDataDisabledPackages(Ljava/util/List;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 1523
    return-void
.end method

.method private setNetworkLoggingEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 852
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setNetworkLoggingEnabled("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TestDPCShellCommand"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda211;

    invoke-direct {v1, p0, p1}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda211;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Z)V

    new-instance v2, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda222;

    invoke-direct {v2, p0, p1}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda222;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Z)V

    invoke-interface {v0, p1, v1, v2}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->setNetworkLoggingEnabled(ZLjava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 857
    return-void
.end method

.method private setOrganizationName(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 921
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOrganizationName("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TestDPCShellCommand"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda118;

    invoke-direct {v1, p0, p1}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda118;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;)V

    new-instance v2, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda119;

    invoke-direct {v2, p0, p1}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda119;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;)V

    invoke-interface {v0, p1, v1, v2}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->setOrganizationName(Ljava/lang/CharSequence;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 926
    return-void
.end method

.method private setPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "newPassword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newPassword"
        }
    .end annotation

    .line 1465
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/ShellCommand;->resetPasswordWithToken(Ljava/lang/String;)V

    .line 1466
    return-void
.end method

.method private setPasswordQuality(I)V
    .locals 4
    .param p1, "quality"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "quality"
        }
    .end annotation

    .line 1025
    invoke-static {p1}, Lcom/afwsamples/testdpc/common/Util;->passwordQualityToString(I)Ljava/lang/String;

    move-result-object v0

    .line 1026
    .local v0, "qualityString":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPasswordQuality("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TestDPCShellCommand"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v2, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda144;

    invoke-direct {v2, p0, v0, p1}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda144;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;I)V

    new-instance v3, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda146;

    invoke-direct {v3, p0, v0, p1}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda146;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;I)V

    invoke-interface {v1, p1, v2, v3}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->setPasswordQuality(ILjava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 1031
    return-void
.end method

.method private setPermissionGrantState(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "grantState"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "packageName",
            "permission",
            "grantState"
        }
    .end annotation

    .line 1256
    invoke-static {p3}, Lcom/afwsamples/testdpc/common/Util;->grantStateToString(I)Ljava/lang/String;

    move-result-object v0

    .line 1257
    .local v0, "grantName":Ljava/lang/String;
    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v5, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda173;

    invoke-direct {v5, p0, p2, p1, v0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda173;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda174;

    invoke-direct {v6, p0, p1, p2, v0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda174;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "permission":Ljava/lang/String;
    .end local p3    # "grantState":I
    .local v2, "packageName":Ljava/lang/String;
    .local v3, "permission":Ljava/lang/String;
    .local v4, "grantState":I
    invoke-interface/range {v1 .. v6}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->setPermissionGrantState(Ljava/lang/String;Ljava/lang/String;ILjava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 1264
    return-void
.end method

.method private setPermittedInputMethodsOnParent([Ljava/lang/String;)V
    .locals 4
    .param p1, "inputMethod"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputMethod"
        }
    .end annotation

    .line 1001
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1002
    .local v0, "inputMethodsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPermittedInputMethodsOnParent("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TestDPCShellCommand"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mContext:Landroid/content/Context;

    .line 1005
    invoke-static {v1}, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->forParentProfile(Landroid/content/Context;)Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;

    move-result-object v1

    .line 1006
    .local v1, "parentDpmGateway":Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;
    invoke-interface {v1, v0}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->setPermittedInputMethods(Ljava/util/List;)Z

    .line 1007
    return-void
.end method

.method private setPersonalAppsSuspended(Z)V
    .locals 4
    .param p1, "suspended"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "suspended"
        }
    .end annotation

    .line 1144
    invoke-static {p1}, Lcom/afwsamples/testdpc/ShellCommand;->suspendedToString(Z)Ljava/lang/String;

    move-result-object v0

    .line 1146
    .local v0, "printableStatus":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPersonalAppsSuspended(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TestDPCShellCommand"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v2, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda112;

    invoke-direct {v2, p0, v0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda112;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;)V

    new-instance v3, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda113;

    invoke-direct {v3, p0, v0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda113;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;)V

    invoke-interface {v1, p1, v2, v3}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->setPersonalAppsSuspended(ZLjava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 1152
    return-void
.end method

.method private setRequiredPasswordComplexity(I)V
    .locals 4
    .param p1, "complexity"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "complexity"
        }
    .end annotation

    .line 1052
    invoke-static {p1}, Lcom/afwsamples/testdpc/common/Util;->requiredPasswordComplexityToString(I)Ljava/lang/String;

    move-result-object v0

    .line 1053
    .local v0, "complexityString":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRequiredPasswordComplexity("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TestDPCShellCommand"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v2, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda189;

    invoke-direct {v2, p0, v0, p1}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda189;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;I)V

    new-instance v3, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda200;

    invoke-direct {v3, p0, v0, p1}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda200;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;I)V

    invoke-interface {v1, p1, v2, v3}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->setRequiredPasswordComplexity(ILjava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 1064
    return-void
.end method

.method private setSecureSetting(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "setting"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "setting",
            "value"
        }
    .end annotation

    .line 1388
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda116;

    invoke-direct {v1, p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda116;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda117;

    invoke-direct {v2, p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda117;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->setSecureSetting(Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 1391
    return-void
.end method

.method private setSecurityLoggingEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 893
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSecurityLoggingEnabled("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TestDPCShellCommand"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda165;

    invoke-direct {v1, p0, p1}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda165;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Z)V

    new-instance v2, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda166;

    invoke-direct {v2, p0, p1}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda166;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Z)V

    invoke-interface {v0, p1, v1, v2}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->setSecurityLoggingEnabled(ZLjava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 898
    return-void
.end method

.method private setStartUserSessionMessage(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 698
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setStartUserSessionMessage(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TestDPCShellCommand"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda149;

    invoke-direct {v1, p0, p1}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda149;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;)V

    new-instance v2, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda150;

    invoke-direct {v2, p0, p1}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda150;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;)V

    invoke-interface {v0, p1, v1, v2}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->setStartUserSessionMessage(Ljava/lang/CharSequence;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 703
    return-void
.end method

.method private setStatusBarDisabled(Z)V
    .locals 3
    .param p1, "disabled"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "disabled"
        }
    .end annotation

    .line 1354
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda142;

    invoke-direct {v1, p0, p1}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda142;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Z)V

    new-instance v2, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda143;

    invoke-direct {v2, p0, p1}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda143;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Z)V

    invoke-interface {v0, p1, v1, v2}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->setStatusBarDisabled(ZLjava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 1358
    return-void
.end method

.method private setSuspendedPackages(Z[Ljava/lang/String;)V
    .locals 5
    .param p1, "suspended"    # Z
    .param p2, "packageNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "suspended",
            "packageNames"
        }
    .end annotation

    .line 1098
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1099
    .local v0, "printableNames":Ljava/lang/String;
    invoke-static {p1}, Lcom/afwsamples/testdpc/ShellCommand;->suspendedToString(Z)Ljava/lang/String;

    move-result-object v1

    .line 1101
    .local v1, "printableStatus":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSuspendedPackages("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TestDPCShellCommand"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    iget-object v2, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v3, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda182;

    invoke-direct {v3, p0, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda182;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda183;

    invoke-direct {v4, p0, v0, v1}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda183;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, p2, p1, v3, v4}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->setPackagesSuspended([Ljava/lang/String;ZLjava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 1110
    return-void
.end method

.method private setUninstallBlocked(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uninstallBlocked"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "packageName",
            "uninstallBlocked"
        }
    .end annotation

    .line 1374
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda155;

    invoke-direct {v1, p0, p2, p1}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda155;-><init>(Lcom/afwsamples/testdpc/ShellCommand;ZLjava/lang/String;)V

    new-instance v2, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda157;

    invoke-direct {v2, p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda157;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;Z)V

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->setUninstallBlocked(Ljava/lang/String;ZLjava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 1379
    return-void
.end method

.method private setUsbDataSignalingEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 1085
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setUsbDataSignalingEnabled("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TestDPCShellCommand"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda184;

    invoke-direct {v1, p0, p1}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda184;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Z)V

    new-instance v2, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda185;

    invoke-direct {v2, p0, p1}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda185;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Z)V

    invoke-interface {v0, p1, v1, v2}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->setUsbDataSignalingEnabled(ZLjava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 1090
    return-void
.end method

.method private setUserControlDisabledPackages([Ljava/lang/String;)V
    .locals 4
    .param p1, "packages"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packages"
        }
    .end annotation

    .line 938
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 939
    .local v0, "packagesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setUserControlDisabledPackages("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TestDPCShellCommand"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v2, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda145;

    invoke-direct {v2, p0, v0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda145;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Ljava/util/List;)V

    new-instance v3, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda156;

    invoke-direct {v3, p0, v0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda156;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Ljava/util/List;)V

    invoke-interface {v1, v0, v2, v3}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->setUserControlDisabledPackages(Ljava/util/List;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 945
    return-void
.end method

.method private setUserIcon(Ljava/io/File;)V
    .locals 5
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    .line 684
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 685
    .local v0, "absolutePath":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUserIcon(): path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TestDPCShellCommand"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 687
    .local v1, "icon":Landroid/graphics/Bitmap;
    if-nez v1, :cond_0

    .line 688
    iget-object v2, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const-string v4, "Could not create bitmap from file %s\n"

    invoke-virtual {v2, v4, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 689
    return-void

    .line 691
    :cond_0
    iget-object v2, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v3, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda66;

    invoke-direct {v3, p0, v0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda66;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;)V

    new-instance v4, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda77;

    invoke-direct {v4, p0, v0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda77;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;)V

    invoke-interface {v2, v1, v3, v4}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->setUserIcon(Landroid/graphics/Bitmap;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 695
    return-void
.end method

.method private setUserRestriction(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "userRestriction"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "userRestriction",
            "enabled"
        }
    .end annotation

    .line 796
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setUserRestriction("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TestDPCShellCommand"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda151;

    invoke-direct {v1, p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda151;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;Z)V

    new-instance v2, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda152;

    invoke-direct {v2, p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda152;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;Z)V

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->setUserRestriction(Ljava/lang/String;ZLjava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 802
    return-void
.end method

.method private setUserRestrictionOnParent(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "userRestriction"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "userRestriction",
            "enabled"
        }
    .end annotation

    .line 805
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setUserRestrictionOnParent("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TestDPCShellCommand"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mContext:Landroid/content/Context;

    .line 807
    invoke-static {v0}, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->forParentProfile(Landroid/content/Context;)Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;

    move-result-object v0

    .line 808
    .local v0, "parentDpmGateway":Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda135;

    invoke-direct {v1, p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda135;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;Z)V

    new-instance v2, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda136;

    invoke-direct {v2, p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda136;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;Z)V

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->setUserRestriction(Ljava/lang/String;ZLjava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 815
    return-void
.end method

.method private startUserInBackground(Landroid/os/UserHandle;)V
    .locals 3
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userHandle"
        }
    .end annotation

    .line 738
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda133;

    invoke-direct {v1, p0, p1}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda133;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Landroid/os/UserHandle;)V

    new-instance v2, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda137;

    invoke-direct {v2, p0, p1}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda137;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Landroid/os/UserHandle;)V

    invoke-interface {v0, p1, v1, v2}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->startUserInBackground(Landroid/os/UserHandle;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 742
    return-void
.end method

.method private stopUser(Landroid/os/UserHandle;)V
    .locals 3
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userHandle"
        }
    .end annotation

    .line 745
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda110;

    invoke-direct {v1, p0, p1}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda110;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Landroid/os/UserHandle;)V

    new-instance v2, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda122;

    invoke-direct {v2, p0, p1}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda122;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Landroid/os/UserHandle;)V

    invoke-interface {v0, p1, v1, v2}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->stopUser(Landroid/os/UserHandle;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 749
    return-void
.end method

.method private static suspendedToString(Z)Ljava/lang/String;
    .locals 1
    .param p0, "suspended"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "suspended"
        }
    .end annotation

    .line 98
    if-eqz p0, :cond_0

    const-string v0, "SUSPENDED"

    goto :goto_0

    :cond_0
    const-string v0, "NOT SUSPENDED"

    :goto_0
    return-object v0
.end method

.method private switchUser(Landroid/os/UserHandle;)V
    .locals 3
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userHandle"
        }
    .end annotation

    .line 731
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda177;

    invoke-direct {v1, p0, p1}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda177;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Landroid/os/UserHandle;)V

    new-instance v2, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda179;

    invoke-direct {v2, p0, p1}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda179;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Landroid/os/UserHandle;)V

    invoke-interface {v0, p1, v1, v2}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->switchUser(Landroid/os/UserHandle;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 735
    return-void
.end method

.method private toString(Landroid/os/UserHandle;)Ljava/lang/String;
    .locals 4
    .param p1, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "user"
        }
    .end annotation

    .line 1625
    invoke-virtual {p1}, Landroid/os/UserHandle;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v1, p1}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->getSerialNumber(Landroid/os/UserHandle;)J

    move-result-wide v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " serial="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private transferOwnership(Ljava/lang/String;)V
    .locals 5
    .param p1, "flatTarget"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flatTarget"
        }
    .end annotation

    .line 1073
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 1075
    .local v0, "target":Landroid/content/ComponentName;
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "transferOwnership("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TestDPCShellCommand"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v2, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda175;

    invoke-direct {v2, p0, p1}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda175;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;)V

    new-instance v3, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda176;

    invoke-direct {v3, p0, p1}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda176;-><init>(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-interface {v1, v0, v4, v2, v3}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->transferOwnership(Landroid/content/ComponentName;Landroid/os/PersistableBundle;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 1082
    return-void
.end method

.method private warnAboutAsyncCall()V
    .locals 4

    .line 1541
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "TestDPCShellCommand"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Command will be executed asynchronally; use `adb logcat %s *:s` for result\n"

    invoke-virtual {v0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1543
    return-void
.end method

.method private wipeData(I)V
    .locals 3
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flags"
        }
    .end annotation

    .line 836
    const-string v0, "TestDPCShellCommand"

    const-string/jumbo v1, "wipeData()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda123;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda123;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    new-instance v2, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda124;

    invoke-direct {v2, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda124;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    invoke-interface {v0, p1, v1, v2}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->wipeData(ILjava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 839
    return-void
.end method


# virtual methods
.method public getSecondaryUsers()V
    .locals 5

    .line 1532
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v0}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->getSecondaryUsers()Ljava/util/List;

    move-result-object v0

    .line 1533
    .local v0, "secondaryUsers":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda95;

    invoke-direct {v2, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda95;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    .line 1534
    invoke-interface {v1, v2}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v1

    .line 1535
    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1536
    .local v1, "secondaryUsersStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSecondaryUsers(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TestDPCShellCommand"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1537
    const-string v2, "secondary-user"

    invoke-direct {p0, v2, v1}, Lcom/afwsamples/testdpc/ShellCommand;->printCollection(Ljava/lang/String;Ljava/util/Collection;)V

    .line 1538
    return-void
.end method

.method public run()V
    .locals 11

    .line 110
    new-instance v0, Lcom/afwsamples/testdpc/util/flags/Flags;

    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mWriter:Ljava/io/PrintWriter;

    invoke-direct {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;-><init>(Ljava/io/PrintWriter;)V

    .line 112
    .local v0, "flags":Lcom/afwsamples/testdpc/util/flags/Flags;
    const-class v1, Landroid/os/UserHandle;

    new-instance v2, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda188;

    invoke-direct {v2, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda188;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    invoke-virtual {v0, v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags;->registerCustomParser(Ljava/lang/Class;Lcom/afwsamples/testdpc/util/flags/Flags$BiFunction;)V

    .line 131
    const-class v1, Ljava/io/File;

    new-instance v2, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda209;

    invoke-direct {v2, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda209;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    invoke-virtual {v0, v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags;->registerCustomParser(Ljava/lang/Class;Lcom/afwsamples/testdpc/util/flags/Flags$BiFunction;)V

    .line 143
    const-class v1, Lcom/afwsamples/testdpc/ShellCommand$KeyValue;

    new-instance v2, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda221;

    invoke-direct {v2}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda221;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags;->registerCustomParser(Ljava/lang/Class;Lcom/afwsamples/testdpc/util/flags/Flags$BiFunction;)V

    .line 157
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda12;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    const-string v2, "dump"

    invoke-static {v2, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback0Params;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    const-string v2, "Dump internal state."

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    .line 158
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda24;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda24;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    const-class v2, Ljava/lang/String;

    .line 162
    const-string v3, "name"

    invoke-static {v2, v3}, Lcom/afwsamples/testdpc/util/flags/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$OrdinalParam;

    move-result-object v2

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 163
    const-string v5, "flags"

    invoke-static {v4, v5}, Lcom/afwsamples/testdpc/util/flags/Flags;->namedParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$NamedParam;

    move-result-object v4

    invoke-static {v4}, Lcom/afwsamples/testdpc/util/flags/Flags;->optional(Lcom/afwsamples/testdpc/util/flags/Flags$NamedParam;)Lcom/afwsamples/testdpc/util/flags/Flags$OptionalParam;

    move-result-object v4

    .line 159
    const-string v6, "create-user"

    invoke-static {v6, v1, v2, v4}, Lcom/afwsamples/testdpc/util/flags/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback2Params;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 164
    const-string v2, "Create a user with the optional flags and name."

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 158
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    .line 165
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda36;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda36;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    const-class v2, Ljava/io/File;

    .line 166
    const-string v4, "file"

    invoke-static {v2, v4}, Lcom/afwsamples/testdpc/util/flags/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$OrdinalParam;

    move-result-object v2

    const-string v4, "set-user-icon"

    invoke-static {v4, v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback1Params;Lcom/afwsamples/testdpc/util/flags/Flags$Param;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 167
    const-string v2, "Set the user icon using the bitmap located at the given file, which must be located in the user\'s `UserIcons` directory. For user 0, you can use `adb push` to push a local file to that directory (/storage/emulated/0/Android/data/com.afwsamples.testdpc/files/Pictures/UserIcons), but for other users you need to switch to that user and use its content provider (for example, `adb shell content write --user 10 --uri content://com.afwsamples.testdpc.usericoncontentprovider/icon.png < /tmp/icon.png`)."

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 165
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    .line 176
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda48;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda48;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    const-class v2, Ljava/lang/String;

    .line 180
    const-string v4, "message"

    invoke-static {v2, v4}, Lcom/afwsamples/testdpc/util/flags/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$OrdinalParam;

    move-result-object v2

    .line 177
    const-string v6, "set-start-user-session-message"

    invoke-static {v6, v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback1Params;Lcom/afwsamples/testdpc/util/flags/Flags$Param;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 181
    const-string v2, "Set the message shown when a user is switched to"

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 176
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    .line 182
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda60;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda60;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    .line 183
    const-string v2, "get-start-user-session-message"

    invoke-static {v2, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback0Params;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 184
    const-string v2, "Get the message shown when a user is switched to"

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 182
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    .line 185
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda72;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda72;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    const-class v2, Ljava/lang/String;

    .line 189
    invoke-static {v2, v4}, Lcom/afwsamples/testdpc/util/flags/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$OrdinalParam;

    move-result-object v2

    .line 186
    const-string v4, "set-end-user-session-message"

    invoke-static {v4, v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback1Params;Lcom/afwsamples/testdpc/util/flags/Flags$Param;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 190
    const-string v2, "Set the message shown when a user is switched of"

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 185
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    .line 191
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda84;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda84;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    .line 192
    const-string v2, "get-end-user-session-message"

    invoke-static {v2, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback0Params;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 193
    const-string v2, "Get the message shown when a user is switched of"

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 191
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    .line 194
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda198;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda198;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    const-class v2, Landroid/os/UserHandle;

    .line 198
    const-string/jumbo v4, "user-serial-number"

    invoke-static {v2, v4}, Lcom/afwsamples/testdpc/util/flags/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$OrdinalParam;

    move-result-object v2

    .line 195
    const-string v6, "remove-user"

    invoke-static {v6, v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback1Params;Lcom/afwsamples/testdpc/util/flags/Flags$Param;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 199
    const-string v2, "Remove the given user."

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 194
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    .line 200
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda199;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda199;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    const-class v2, Landroid/os/UserHandle;

    .line 204
    invoke-static {v2, v4}, Lcom/afwsamples/testdpc/util/flags/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$OrdinalParam;

    move-result-object v2

    .line 201
    const-string/jumbo v6, "switch-user"

    invoke-static {v6, v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback1Params;Lcom/afwsamples/testdpc/util/flags/Flags$Param;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 205
    const-string v2, "Switch the given user to foreground."

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 200
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    .line 206
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda201;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda201;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    const-class v6, Landroid/os/UserHandle;

    .line 210
    invoke-static {v6, v4}, Lcom/afwsamples/testdpc/util/flags/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$OrdinalParam;

    move-result-object v4

    .line 207
    const-string/jumbo v6, "start-user-in-background"

    invoke-static {v6, v1, v4}, Lcom/afwsamples/testdpc/util/flags/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback1Params;Lcom/afwsamples/testdpc/util/flags/Flags$Param;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 211
    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 206
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    .line 212
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda202;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda202;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    .line 213
    const-string v2, "is-logout-enabled"

    invoke-static {v2, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback0Params;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 216
    const-string v2, "Whether logout is enabled."

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 212
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    .line 217
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda203;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda203;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 221
    const-string v4, "enabled"

    invoke-static {v2, v4}, Lcom/afwsamples/testdpc/util/flags/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$OrdinalParam;

    move-result-object v2

    .line 218
    const-string v6, "set-logout-enabled"

    invoke-static {v6, v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback1Params;Lcom/afwsamples/testdpc/util/flags/Flags$Param;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 222
    const-string v2, "Set whether logout is enabled."

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 217
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    .line 223
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda204;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda204;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    .line 224
    const-string v2, "logout-user"

    invoke-static {v2, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback0Params;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 227
    const-string v2, "Logout the current user."

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 223
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    .line 228
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda205;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda205;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    .line 229
    const-string v2, "is-user-affiliated"

    invoke-static {v2, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback0Params;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 230
    const-string v2, "Check if the user is affiliated with the device."

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 228
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    .line 231
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda206;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda206;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    const-class v2, Ljava/lang/String;

    .line 235
    const-string v6, "ids"

    invoke-static {v2, v6}, Lcom/afwsamples/testdpc/util/flags/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$OrdinalParam;

    move-result-object v2

    invoke-static {v2}, Lcom/afwsamples/testdpc/util/flags/Flags;->repeated(Lcom/afwsamples/testdpc/util/flags/Flags$OrdinalParam;)Lcom/afwsamples/testdpc/util/flags/Flags$RepeatedOrdinalParam;

    move-result-object v2

    .line 232
    const-string v6, "set-affiliation-ids"

    invoke-static {v6, v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback1Params;Lcom/afwsamples/testdpc/util/flags/Flags$Param;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 236
    const-string v2, "Set the user affiliation ids (or clear them if no ids are passed)."

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 231
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    .line 237
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda207;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda207;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    .line 238
    const-string v2, "get-affiliation-ids"

    invoke-static {v2, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback0Params;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 239
    const-string v2, "Get the user affiliation ids."

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 237
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    .line 240
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda208;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda208;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    .line 241
    const-string v2, "list-user-restrictions"

    invoke-static {v2, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback0Params;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 242
    const-string v2, "List the user restrictions."

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 240
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    .line 243
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda210;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda210;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    const-class v2, Ljava/lang/String;

    .line 247
    const-string v6, "restriction"

    invoke-static {v2, v6}, Lcom/afwsamples/testdpc/util/flags/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$OrdinalParam;

    move-result-object v2

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 248
    invoke-static {v7, v4}, Lcom/afwsamples/testdpc/util/flags/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$OrdinalParam;

    move-result-object v7

    .line 244
    const-string v8, "set-user-restriction"

    invoke-static {v8, v1, v2, v7}, Lcom/afwsamples/testdpc/util/flags/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback2Params;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 249
    const-string v2, "Set the given user restriction."

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 243
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    .line 250
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda212;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda212;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    const-class v2, Ljava/lang/String;

    .line 254
    invoke-static {v2, v6}, Lcom/afwsamples/testdpc/util/flags/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$OrdinalParam;

    move-result-object v2

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 255
    invoke-static {v6, v4}, Lcom/afwsamples/testdpc/util/flags/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$OrdinalParam;

    move-result-object v6

    .line 251
    const-string v7, "set-user-restriction-on-parent"

    invoke-static {v7, v1, v2, v6}, Lcom/afwsamples/testdpc/util/flags/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback2Params;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 256
    const-string v2, "Set the given user restriction on the parent user."

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 250
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    .line 257
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda213;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda213;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 258
    invoke-static {v2, v5}, Lcom/afwsamples/testdpc/util/flags/Flags;->namedParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$NamedParam;

    move-result-object v2

    invoke-static {v2}, Lcom/afwsamples/testdpc/util/flags/Flags;->optional(Lcom/afwsamples/testdpc/util/flags/Flags$NamedParam;)Lcom/afwsamples/testdpc/util/flags/Flags$OptionalParam;

    move-result-object v2

    const-string v6, "lock-now"

    invoke-static {v6, v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback1Params;Lcom/afwsamples/testdpc/util/flags/Flags$Param;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 259
    const-string v2, "Lock the device (now! :-)."

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 257
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    .line 260
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda214;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda214;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    const-string v2, "reboot"

    invoke-static {v2, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback0Params;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    const-string v2, "Reboot the device."

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    .line 261
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda215;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda215;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 262
    invoke-static {v2, v5}, Lcom/afwsamples/testdpc/util/flags/Flags;->namedParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$NamedParam;

    move-result-object v2

    invoke-static {v2}, Lcom/afwsamples/testdpc/util/flags/Flags;->optional(Lcom/afwsamples/testdpc/util/flags/Flags$NamedParam;)Lcom/afwsamples/testdpc/util/flags/Flags$OptionalParam;

    move-result-object v2

    const-string/jumbo v6, "wipe-data"

    invoke-static {v6, v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback1Params;Lcom/afwsamples/testdpc/util/flags/Flags$Param;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 263
    const-string v2, "Factory reset the device."

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 261
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    .line 264
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda216;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda216;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    .line 265
    const-string v2, "request-bugreport"

    invoke-static {v2, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback0Params;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 266
    const-string v2, "Request a bug report."

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 264
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    .line 267
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda217;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda217;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    .line 268
    const-string v2, "get-last-bugreport-request-time"

    invoke-static {v2, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback0Params;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 269
    const-string v2, "Prints the last time the device owner request a bugreport."

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 267
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    .line 270
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda218;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda218;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 274
    invoke-static {v2, v4}, Lcom/afwsamples/testdpc/util/flags/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$OrdinalParam;

    move-result-object v2

    .line 271
    const-string v6, "set-network-logging-enabled"

    invoke-static {v6, v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback1Params;Lcom/afwsamples/testdpc/util/flags/Flags$Param;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 275
    const-string v2, "Enable / disable network logging."

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 270
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    .line 276
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda219;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda219;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    .line 277
    const-string v2, "is-network-logging-enabled"

    invoke-static {v2, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback0Params;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 278
    const-string v2, "Checks whether network logging is enabled."

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 276
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    .line 279
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda220;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda220;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    .line 280
    const-string v2, "get-last-network-log-retrieval-time"

    invoke-static {v2, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback0Params;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 281
    const-string v2, "Prints the last time the device owner retrieved the network log."

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 279
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    .line 282
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda1;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    const-class v2, Ljava/lang/Long;

    .line 284
    const-string v6, "batch-token"

    invoke-static {v2, v6}, Lcom/afwsamples/testdpc/util/flags/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$OrdinalParam;

    move-result-object v2

    .line 283
    const-string v6, "retrieve-network-logs"

    invoke-static {v6, v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback1Params;Lcom/afwsamples/testdpc/util/flags/Flags$Param;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 285
    const-string v2, "Retrieves the network logs."

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 282
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    .line 286
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda2;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 290
    invoke-static {v2, v4}, Lcom/afwsamples/testdpc/util/flags/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$OrdinalParam;

    move-result-object v2

    .line 287
    const-string v6, "set-security-logging-enabled"

    invoke-static {v6, v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback1Params;Lcom/afwsamples/testdpc/util/flags/Flags$Param;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 291
    const-string v2, "Enable / disable security logging."

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 286
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    .line 292
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda3;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    .line 293
    const-string v2, "is-security-logging-enabled"

    invoke-static {v2, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback0Params;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 294
    const-string v2, "Checks whether security logging is enabled."

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 292
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    .line 295
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda4;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    .line 296
    const-string v2, "get-last-security-log-retrieval-time"

    invoke-static {v2, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback0Params;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 297
    const-string v2, "Prints the last time the device owner retrieved the security log."

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 295
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    .line 298
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda5;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    .line 299
    const-string v2, "retrieve-security-logs"

    invoke-static {v2, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback0Params;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 300
    const-string v2, "Retrieves the security logs."

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 298
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    .line 301
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda6;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    .line 302
    const-string v2, "retrieve-pre-reboot-security-logs"

    invoke-static {v2, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback0Params;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 303
    const-string v2, "Retrieves the pre-reboot security logs."

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 301
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    .line 304
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda7;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    .line 305
    const-string v2, "clear-organization-name"

    invoke-static {v2, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback0Params;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 306
    const-string v2, "Clear the organisation name."

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 304
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    .line 307
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda8;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    const-class v2, Ljava/lang/String;

    .line 311
    invoke-static {v2, v3}, Lcom/afwsamples/testdpc/util/flags/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$OrdinalParam;

    move-result-object v2

    .line 308
    const-string v3, "set-organization-name"

    invoke-static {v3, v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback1Params;Lcom/afwsamples/testdpc/util/flags/Flags$Param;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 312
    const-string v2, "Set the organisation name."

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 307
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    .line 313
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda9;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    .line 314
    const-string v2, "get-organization-name"

    invoke-static {v2, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback0Params;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 315
    const-string v2, "Get the organization name."

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 313
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    .line 316
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda10;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    const-class v2, Ljava/lang/String;

    .line 320
    const-string v3, "packages"

    invoke-static {v2, v3}, Lcom/afwsamples/testdpc/util/flags/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$OrdinalParam;

    move-result-object v2

    invoke-static {v2}, Lcom/afwsamples/testdpc/util/flags/Flags;->repeated(Lcom/afwsamples/testdpc/util/flags/Flags$OrdinalParam;)Lcom/afwsamples/testdpc/util/flags/Flags$RepeatedOrdinalParam;

    move-result-object v2

    .line 317
    const-string v6, "set-user-control-disabled-packages"

    invoke-static {v6, v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback1Params;Lcom/afwsamples/testdpc/util/flags/Flags$Param;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 321
    const-string v2, "Set the packages that the user cannot force stop or clear data for. Provide an empty list to reset."

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 316
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    .line 324
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda13;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    .line 325
    const-string v2, "get-user-control-disabled-packages"

    invoke-static {v2, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback0Params;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 326
    const-string v2, "Get the packages that the user cannot force stop or clear data for."

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 324
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    .line 327
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda14;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    const-class v2, Ljava/lang/String;

    .line 331
    invoke-static {v2, v3}, Lcom/afwsamples/testdpc/util/flags/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$OrdinalParam;

    move-result-object v2

    invoke-static {v2}, Lcom/afwsamples/testdpc/util/flags/Flags;->repeated(Lcom/afwsamples/testdpc/util/flags/Flags$OrdinalParam;)Lcom/afwsamples/testdpc/util/flags/Flags$RepeatedOrdinalParam;

    move-result-object v2

    .line 328
    const-string v6, "set-cross-profile-packages"

    invoke-static {v6, v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback1Params;Lcom/afwsamples/testdpc/util/flags/Flags$Param;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 332
    const-string v2, "Set the allow-listed packages that are allowed to request user consent for cross-profile communication. Provide an empty list to reset."

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 327
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    .line 335
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda15;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    .line 336
    const-string v2, "get-cross-profile-packages"

    invoke-static {v2, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback0Params;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 337
    const-string v2, "Get the allow-listed packages that are allowed to request user consent for cross-profile communication."

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 335
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    .line 340
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda16;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    .line 341
    const-string v2, "remove-active-admin"

    invoke-static {v2, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback0Params;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 342
    const-string v2, "Remove TestDPC as an active admin."

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 340
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    .line 343
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda17;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    .line 344
    const-string v2, "clear-device-owner"

    invoke-static {v2, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback0Params;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 345
    const-string v2, "Clear TestDPC as device owner."

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 343
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    .line 346
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda18;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    .line 347
    const-string v2, "clear-profile-owner"

    invoke-static {v2, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback0Params;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 348
    const-string v2, "Clear TestDPC as profile owner."

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 346
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    .line 349
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda19;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 353
    const-string v6, "quality"

    invoke-static {v2, v6}, Lcom/afwsamples/testdpc/util/flags/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$OrdinalParam;

    move-result-object v2

    .line 350
    const-string v6, "set-password-quality"

    invoke-static {v6, v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback1Params;Lcom/afwsamples/testdpc/util/flags/Flags$Param;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 354
    const-string v2, "Set the password quality."

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 349
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    .line 355
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda20;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    .line 356
    const-string v2, "get-password-quality"

    invoke-static {v2, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback0Params;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 357
    const-string v2, "Get the password quality."

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 355
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    .line 358
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda21;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda21;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    .line 359
    const-string v2, "is-active-password-sufficient"

    invoke-static {v2, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback0Params;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 360
    const-string v2, "Checks if user\'s password is sufficient."

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 358
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    .line 361
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda23;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda23;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    .line 362
    const-string v2, "is-active-password-sufficient-for-device-requirement"

    invoke-static {v2, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback0Params;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 365
    const-string v2, "Checks if user\'s password is sufficient for device requirement."

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 361
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    .line 366
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda25;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda25;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 370
    const-string v6, "complexity"

    invoke-static {v2, v6}, Lcom/afwsamples/testdpc/util/flags/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$OrdinalParam;

    move-result-object v2

    .line 367
    const-string v6, "set-required-password-complexity"

    invoke-static {v6, v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback1Params;Lcom/afwsamples/testdpc/util/flags/Flags$Param;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 371
    const-string v2, "Set the required password complexity."

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 366
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    .line 372
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda26;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda26;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    .line 373
    const-string v2, "get-required-password-complexity"

    invoke-static {v2, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback0Params;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 374
    const-string v2, "Get required the password complexity."

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 372
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    .line 375
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda27;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda27;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    const-class v2, Ljava/lang/String;

    .line 376
    const-string v6, "admin"

    invoke-static {v2, v6}, Lcom/afwsamples/testdpc/util/flags/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$OrdinalParam;

    move-result-object v2

    const-string/jumbo v6, "transfer-ownership"

    invoke-static {v6, v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback1Params;Lcom/afwsamples/testdpc/util/flags/Flags$Param;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 377
    const-string v2, "Transfer ownership to the given admin."

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 375
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    .line 378
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda28;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda28;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 382
    const-string/jumbo v6, "suspended"

    invoke-static {v2, v6}, Lcom/afwsamples/testdpc/util/flags/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$OrdinalParam;

    move-result-object v2

    const-class v7, Ljava/lang/String;

    .line 383
    const-string v8, "packageNames"

    invoke-static {v7, v8}, Lcom/afwsamples/testdpc/util/flags/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$OrdinalParam;

    move-result-object v7

    invoke-static {v7}, Lcom/afwsamples/testdpc/util/flags/Flags;->repeated(Lcom/afwsamples/testdpc/util/flags/Flags$OrdinalParam;)Lcom/afwsamples/testdpc/util/flags/Flags$RepeatedOrdinalParam;

    move-result-object v7

    .line 379
    const-string v9, "set-suspended-packages"

    invoke-static {v9, v1, v2, v7}, Lcom/afwsamples/testdpc/util/flags/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback2Params;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 384
    const-string v2, "Suspend / unsuspend the given packages."

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 378
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    .line 385
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda29;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda29;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    const-class v2, Ljava/lang/String;

    .line 389
    invoke-static {v2, v8}, Lcom/afwsamples/testdpc/util/flags/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$OrdinalParam;

    move-result-object v2

    invoke-static {v2}, Lcom/afwsamples/testdpc/util/flags/Flags;->repeated(Lcom/afwsamples/testdpc/util/flags/Flags$OrdinalParam;)Lcom/afwsamples/testdpc/util/flags/Flags$RepeatedOrdinalParam;

    move-result-object v2

    .line 386
    const-string v7, "is-suspended-packages"

    invoke-static {v7, v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback1Params;Lcom/afwsamples/testdpc/util/flags/Flags$Param;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 390
    const-string v2, "Check if the given packages are suspended."

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 385
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    .line 391
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda30;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda30;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 395
    invoke-static {v2, v6}, Lcom/afwsamples/testdpc/util/flags/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$OrdinalParam;

    move-result-object v2

    .line 392
    const-string v6, "set-personal-apps-suspended"

    invoke-static {v6, v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback1Params;Lcom/afwsamples/testdpc/util/flags/Flags$Param;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 396
    const-string v2, "Suspend / unsuspend personal apps."

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 391
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    .line 397
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda31;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda31;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    const-class v2, Ljava/lang/String;

    .line 401
    const-string v6, "packageName"

    invoke-static {v2, v6}, Lcom/afwsamples/testdpc/util/flags/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$OrdinalParam;

    move-result-object v2

    .line 398
    const-string v7, "enable-system-app"

    invoke-static {v7, v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback1Params;Lcom/afwsamples/testdpc/util/flags/Flags$Param;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 402
    const-string v2, "Enable the given system app."

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 397
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    .line 403
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda32;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda32;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    .line 404
    const-string v2, "list-disabled-system-apps"

    invoke-static {v2, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback0Params;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 405
    const-string v2, "List the disabled system apps."

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 403
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    .line 406
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda34;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda34;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    .line 407
    const-string v2, "get-personal-apps-suspended-reasons"

    invoke-static {v2, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback0Params;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 408
    const-string v2, "Get the reasons for suspending personal apps."

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 406
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    .line 409
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda35;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda35;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    const-class v2, Ljava/lang/String;

    .line 413
    const-string v7, "package"

    invoke-static {v2, v7}, Lcom/afwsamples/testdpc/util/flags/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$OrdinalParam;

    move-result-object v2

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 414
    const-string v9, "hidden"

    invoke-static {v8, v9}, Lcom/afwsamples/testdpc/util/flags/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$OrdinalParam;

    move-result-object v8

    .line 410
    const-string v9, "set-hidden-package"

    invoke-static {v9, v1, v2, v8}, Lcom/afwsamples/testdpc/util/flags/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback2Params;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 415
    const-string v2, "Hide / unhide the given package."

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 409
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    .line 416
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda37;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda37;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    const-class v2, Ljava/lang/String;

    .line 417
    invoke-static {v2, v7}, Lcom/afwsamples/testdpc/util/flags/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$OrdinalParam;

    move-result-object v2

    const-string v8, "is-hidden-package"

    invoke-static {v8, v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback1Params;Lcom/afwsamples/testdpc/util/flags/Flags$Param;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 418
    const-string v2, "Check if the given package is hidden."

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 416
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    .line 419
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda38;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda38;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    const-class v2, Ljava/lang/String;

    .line 423
    invoke-static {v2, v3}, Lcom/afwsamples/testdpc/util/flags/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$OrdinalParam;

    move-result-object v2

    invoke-static {v2}, Lcom/afwsamples/testdpc/util/flags/Flags;->repeated(Lcom/afwsamples/testdpc/util/flags/Flags$OrdinalParam;)Lcom/afwsamples/testdpc/util/flags/Flags$RepeatedOrdinalParam;

    move-result-object v2

    .line 420
    const-string v8, "set-lock-task-packages"

    invoke-static {v8, v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback1Params;Lcom/afwsamples/testdpc/util/flags/Flags$Param;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 424
    const-string v2, "Set the packages allowed to have tasks locked."

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 419
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    .line 425
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda39;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda39;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    .line 426
    const-string v2, "get-lock-task-packages"

    invoke-static {v2, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback0Params;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 427
    const-string v2, "Get the packages allowed to have tasks locked."

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 425
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    .line 428
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda40;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda40;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    const-class v2, Ljava/lang/String;

    .line 432
    invoke-static {v2, v3}, Lcom/afwsamples/testdpc/util/flags/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$OrdinalParam;

    move-result-object v2

    invoke-static {v2}, Lcom/afwsamples/testdpc/util/flags/Flags;->repeated(Lcom/afwsamples/testdpc/util/flags/Flags$OrdinalParam;)Lcom/afwsamples/testdpc/util/flags/Flags$RepeatedOrdinalParam;

    move-result-object v2

    .line 429
    const-string v8, "is-lock-task-permitted"

    invoke-static {v8, v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback1Params;Lcom/afwsamples/testdpc/util/flags/Flags$Param;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 433
    const-string v2, "Check if the given packages are allowed to have tasks locked."

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 428
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    .line 434
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda41;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda41;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 438
    invoke-static {v2, v5}, Lcom/afwsamples/testdpc/util/flags/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$OrdinalParam;

    move-result-object v2

    .line 435
    const-string v8, "set-lock-task-features"

    invoke-static {v8, v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback1Params;Lcom/afwsamples/testdpc/util/flags/Flags$Param;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 439
    const-string v2, "Set the lock task features."

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 434
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    .line 440
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda42;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda42;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    .line 441
    const-string v2, "get-lock-task-features"

    invoke-static {v2, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback0Params;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 442
    const-string v2, "Get the lock task features."

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 440
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    .line 443
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda43;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda43;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    const-class v2, Ljava/lang/String;

    .line 447
    invoke-static {v2, v7}, Lcom/afwsamples/testdpc/util/flags/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$OrdinalParam;

    move-result-object v2

    const-class v8, Lcom/afwsamples/testdpc/ShellCommand$KeyValue;

    .line 448
    const-string v9, "restrictions"

    invoke-static {v8, v9}, Lcom/afwsamples/testdpc/util/flags/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$OrdinalParam;

    move-result-object v8

    invoke-static {v8}, Lcom/afwsamples/testdpc/util/flags/Flags;->repeated(Lcom/afwsamples/testdpc/util/flags/Flags$OrdinalParam;)Lcom/afwsamples/testdpc/util/flags/Flags$RepeatedOrdinalParam;

    move-result-object v8

    .line 444
    const-string v9, "set-app-restrictions"

    invoke-static {v9, v1, v2, v8}, Lcom/afwsamples/testdpc/util/flags/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback2Params;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 449
    const-string v2, "Set the application restrictions (provided as key=value strings) for the given app (or clear if no values provided)."

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 443
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    .line 452
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda45;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda45;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    const-class v2, Ljava/lang/String;

    .line 456
    invoke-static {v2, v3}, Lcom/afwsamples/testdpc/util/flags/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$OrdinalParam;

    move-result-object v2

    invoke-static {v2}, Lcom/afwsamples/testdpc/util/flags/Flags;->repeated(Lcom/afwsamples/testdpc/util/flags/Flags$OrdinalParam;)Lcom/afwsamples/testdpc/util/flags/Flags$RepeatedOrdinalParam;

    move-result-object v2

    .line 453
    const-string v3, "get-app-restrictions"

    invoke-static {v3, v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback1Params;Lcom/afwsamples/testdpc/util/flags/Flags$Param;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 457
    const-string v2, "Get the application restrictions for the given apps (or for TestDPC when empty, using UserManager)."

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 452
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    .line 460
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda46;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda46;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    const-class v2, Ljava/lang/String;

    .line 464
    invoke-static {v2, v7}, Lcom/afwsamples/testdpc/util/flags/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$OrdinalParam;

    move-result-object v2

    const-class v3, Ljava/lang/String;

    .line 465
    const-string v8, "permission"

    invoke-static {v3, v8}, Lcom/afwsamples/testdpc/util/flags/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$OrdinalParam;

    move-result-object v3

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 466
    const-string/jumbo v10, "state"

    invoke-static {v9, v10}, Lcom/afwsamples/testdpc/util/flags/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$OrdinalParam;

    move-result-object v9

    .line 461
    const-string v10, "set-permission-grant-state"

    invoke-static {v10, v1, v2, v3, v9}, Lcom/afwsamples/testdpc/util/flags/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback3Params;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 467
    const-string v2, "Set the grant state for the given package and permission."

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 460
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    .line 468
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda47;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda47;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    const-class v2, Ljava/lang/String;

    .line 472
    invoke-static {v2, v7}, Lcom/afwsamples/testdpc/util/flags/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$OrdinalParam;

    move-result-object v2

    const-class v3, Ljava/lang/String;

    .line 473
    invoke-static {v3, v8}, Lcom/afwsamples/testdpc/util/flags/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$OrdinalParam;

    move-result-object v3

    .line 469
    const-string v8, "get-permission-grant-state"

    invoke-static {v8, v1, v2, v3}, Lcom/afwsamples/testdpc/util/flags/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback2Params;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 474
    const-string v2, "Get the grant state for the given package and persmission."

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 468
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    .line 475
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda49;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda49;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    .line 476
    const-string v2, "can-admin-grant-sensors-permissions"

    invoke-static {v2, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback0Params;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 477
    const-string v2, "Checks whether the admin can grant sensor permissions."

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 475
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    .line 478
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda50;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda50;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 482
    invoke-static {v2, v4}, Lcom/afwsamples/testdpc/util/flags/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$OrdinalParam;

    move-result-object v2

    .line 479
    const-string v3, "set-location-enabled"

    invoke-static {v3, v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback1Params;Lcom/afwsamples/testdpc/util/flags/Flags$Param;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 483
    const-string v2, "Set location enabled for the user."

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 478
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    .line 484
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda51;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda51;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    .line 485
    const-string v2, "is-location-enabled"

    invoke-static {v2, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback0Params;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 486
    const-string v2, "Get whether location is enabled for the user."

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 484
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    .line 487
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda52;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda52;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    .line 488
    const-string v2, "clear-device-owner-lockscreen-info"

    invoke-static {v2, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback0Params;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 489
    const-string v2, "Clear the device owner lock screen info."

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 487
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    .line 490
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda53;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda53;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    const-class v2, Ljava/lang/String;

    .line 494
    const-string v3, "info"

    invoke-static {v2, v3}, Lcom/afwsamples/testdpc/util/flags/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$OrdinalParam;

    move-result-object v2

    .line 491
    const-string v3, "set-device-owner-lockscreen-info"

    invoke-static {v3, v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback1Params;Lcom/afwsamples/testdpc/util/flags/Flags$Param;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 495
    const-string v2, "Set the device owner lock screen info."

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 490
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    .line 496
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda54;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda54;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    .line 497
    const-string v2, "get-device-owner-lockscreen-info"

    invoke-static {v2, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback0Params;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 498
    const-string v2, "Get the device owner lock screen info."

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 496
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    .line 499
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda56;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda56;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 503
    const-string v3, "disabled"

    invoke-static {v2, v3}, Lcom/afwsamples/testdpc/util/flags/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$OrdinalParam;

    move-result-object v2

    .line 500
    const-string v8, "set-keyguard-disabled"

    invoke-static {v8, v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback1Params;Lcom/afwsamples/testdpc/util/flags/Flags$Param;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 504
    const-string v2, "Set keyguard disabled."

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 499
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    .line 505
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda57;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda57;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 509
    invoke-static {v2, v5}, Lcom/afwsamples/testdpc/util/flags/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$OrdinalParam;

    move-result-object v2

    .line 506
    const-string v8, "set-keyguard-disabled-features"

    invoke-static {v8, v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback1Params;Lcom/afwsamples/testdpc/util/flags/Flags$Param;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 510
    const-string v2, "Set the keyguard disabled features."

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 505
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    .line 511
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda58;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda58;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    .line 512
    const-string v2, "get-keyguard-disabled-features"

    invoke-static {v2, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback0Params;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 513
    const-string v2, "Get the keyguard disabled features."

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 511
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    .line 514
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda59;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda59;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 518
    invoke-static {v2, v3}, Lcom/afwsamples/testdpc/util/flags/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$OrdinalParam;

    move-result-object v2

    .line 515
    const-string v8, "set-camera-disabled"

    invoke-static {v8, v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback1Params;Lcom/afwsamples/testdpc/util/flags/Flags$Param;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 519
    const-string v2, "Set camera disabled."

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 514
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    .line 520
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda61;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda61;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    .line 521
    const-string v2, "get-camera-disabled"

    invoke-static {v2, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback0Params;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 522
    const-string v2, "Get camera disabled."

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 520
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    .line 523
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda62;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda62;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 527
    invoke-static {v2, v3}, Lcom/afwsamples/testdpc/util/flags/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$OrdinalParam;

    move-result-object v2

    .line 524
    const-string v3, "set-status-bar-disabled"

    invoke-static {v3, v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback1Params;Lcom/afwsamples/testdpc/util/flags/Flags$Param;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 528
    const-string v2, "Set status bar disabled."

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 523
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    .line 529
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda63;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda63;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 533
    const-string v3, "max"

    invoke-static {v2, v3}, Lcom/afwsamples/testdpc/util/flags/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$OrdinalParam;

    move-result-object v2

    .line 530
    const-string v3, "set-max-failed-passwords"

    invoke-static {v3, v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback1Params;Lcom/afwsamples/testdpc/util/flags/Flags$Param;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 534
    const-string v2, "Set maximum number of failed passwords before user is wiped."

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 529
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    .line 535
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda64;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda64;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    .line 536
    const-string v2, "get-max-failed-passwords"

    invoke-static {v2, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback0Params;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 537
    const-string v2, "Get maximum number of failed passwords before user is wiped."

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 535
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    .line 538
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda65;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda65;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    const-class v2, Ljava/lang/String;

    .line 540
    invoke-static {v2, v7}, Lcom/afwsamples/testdpc/util/flags/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$OrdinalParam;

    move-result-object v2

    .line 539
    const-string v3, "install-existing-package"

    invoke-static {v3, v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback1Params;Lcom/afwsamples/testdpc/util/flags/Flags$Param;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 541
    const-string v2, "Installs the existing package for this user."

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 538
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    .line 542
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda67;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda67;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    const-class v2, Ljava/lang/String;

    .line 544
    invoke-static {v2, v7}, Lcom/afwsamples/testdpc/util/flags/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$OrdinalParam;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 545
    const-string v8, "blocked"

    invoke-static {v3, v8}, Lcom/afwsamples/testdpc/util/flags/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$OrdinalParam;

    move-result-object v3

    .line 543
    const-string v8, "set-uninstall-blocked"

    invoke-static {v8, v1, v2, v3}, Lcom/afwsamples/testdpc/util/flags/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback2Params;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 546
    const-string v2, "Sets whether the given package can be uninstalled."

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 542
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    .line 547
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda68;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda68;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    const-class v2, Ljava/lang/String;

    .line 549
    invoke-static {v2, v7}, Lcom/afwsamples/testdpc/util/flags/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$OrdinalParam;

    move-result-object v2

    .line 548
    const-string v3, "is-uninstall-blocked"

    invoke-static {v3, v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback1Params;Lcom/afwsamples/testdpc/util/flags/Flags$Param;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 550
    const-string v2, "Checks whether the given package can be uninstalled."

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 547
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    .line 551
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda69;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda69;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    const-class v2, Ljava/lang/String;

    .line 553
    const-string v3, "setting"

    invoke-static {v2, v3}, Lcom/afwsamples/testdpc/util/flags/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$OrdinalParam;

    move-result-object v2

    const-class v7, Ljava/lang/String;

    .line 554
    const-string/jumbo v8, "value"

    invoke-static {v7, v8}, Lcom/afwsamples/testdpc/util/flags/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$OrdinalParam;

    move-result-object v7

    .line 552
    const-string v9, "set-secure-setting"

    invoke-static {v9, v1, v2, v7}, Lcom/afwsamples/testdpc/util/flags/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback2Params;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 555
    const-string v2, "Sets the given Settings.SECURE setting for this user."

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 551
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    .line 556
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda70;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda70;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    const-class v2, Ljava/lang/String;

    .line 558
    invoke-static {v2, v3}, Lcom/afwsamples/testdpc/util/flags/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$OrdinalParam;

    move-result-object v2

    const-class v3, Ljava/lang/String;

    .line 559
    invoke-static {v3, v8}, Lcom/afwsamples/testdpc/util/flags/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$OrdinalParam;

    move-result-object v3

    .line 557
    const-string v7, "set-global-setting"

    invoke-static {v7, v1, v2, v3}, Lcom/afwsamples/testdpc/util/flags/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback2Params;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 560
    const-string v2, "Sets the given Settings.GLOBAL setting for this user."

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 556
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    .line 561
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda71;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda71;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    const-class v2, Ljava/lang/String;

    .line 563
    const-string v3, "alias"

    invoke-static {v2, v3}, Lcom/afwsamples/testdpc/util/flags/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$OrdinalParam;

    move-result-object v2

    .line 562
    const-string v7, "has-key-pair"

    invoke-static {v7, v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback1Params;Lcom/afwsamples/testdpc/util/flags/Flags$Param;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 564
    const-string v2, "Checks if a certificate key with the given alias is installed."

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 561
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    .line 565
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda73;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda73;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    const-class v2, Ljava/lang/String;

    .line 567
    invoke-static {v2, v3}, Lcom/afwsamples/testdpc/util/flags/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$OrdinalParam;

    move-result-object v2

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 568
    invoke-static {v7, v5}, Lcom/afwsamples/testdpc/util/flags/Flags;->namedParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$NamedParam;

    move-result-object v5

    invoke-static {v5}, Lcom/afwsamples/testdpc/util/flags/Flags;->optional(Lcom/afwsamples/testdpc/util/flags/Flags$NamedParam;)Lcom/afwsamples/testdpc/util/flags/Flags$OptionalParam;

    move-result-object v5

    .line 566
    const-string v7, "generate-device-attestation-key-pair"

    invoke-static {v7, v1, v2, v5}, Lcom/afwsamples/testdpc/util/flags/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback2Params;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 569
    const-string v2, "Generates a device attestation key."

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 565
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    .line 570
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda74;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda74;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    const-class v2, Ljava/lang/String;

    .line 572
    invoke-static {v2, v3}, Lcom/afwsamples/testdpc/util/flags/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$OrdinalParam;

    move-result-object v2

    .line 571
    const-string v5, "remove-key-pair"

    invoke-static {v5, v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback1Params;Lcom/afwsamples/testdpc/util/flags/Flags$Param;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 573
    const-string v2, "Removes the certificate key with the given alias."

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 570
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    .line 574
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda75;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda75;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    const-class v2, Ljava/lang/String;

    .line 576
    invoke-static {v2, v3}, Lcom/afwsamples/testdpc/util/flags/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$OrdinalParam;

    move-result-object v2

    const-class v5, Ljava/lang/String;

    .line 577
    invoke-static {v5, v6}, Lcom/afwsamples/testdpc/util/flags/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$OrdinalParam;

    move-result-object v5

    .line 575
    const-string v7, "grant-key-pair-to-app"

    invoke-static {v7, v1, v2, v5}, Lcom/afwsamples/testdpc/util/flags/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback2Params;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 578
    const-string v2, "Grants a certificate key to an app."

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 574
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    .line 579
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda76;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda76;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    const-class v2, Ljava/lang/String;

    .line 581
    invoke-static {v2, v3}, Lcom/afwsamples/testdpc/util/flags/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$OrdinalParam;

    move-result-object v2

    .line 580
    const-string v5, "get-key-pair-grants"

    invoke-static {v5, v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback1Params;Lcom/afwsamples/testdpc/util/flags/Flags$Param;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 582
    const-string v2, "Lists the apps that were granted the given certificate key."

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 579
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    .line 583
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda78;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda78;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    const-class v2, Ljava/lang/String;

    .line 585
    invoke-static {v2, v3}, Lcom/afwsamples/testdpc/util/flags/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$OrdinalParam;

    move-result-object v2

    const-class v3, Ljava/lang/String;

    .line 586
    invoke-static {v3, v6}, Lcom/afwsamples/testdpc/util/flags/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$OrdinalParam;

    move-result-object v3

    .line 584
    const-string v5, "revoke-key-pair-from-app"

    invoke-static {v5, v1, v2, v3}, Lcom/afwsamples/testdpc/util/flags/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback2Params;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 587
    const-string v2, "Revokes a certificate key from an app."

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 583
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    .line 588
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda79;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda79;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    const-class v2, Ljava/lang/String;

    .line 590
    invoke-static {v2, v6}, Lcom/afwsamples/testdpc/util/flags/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$OrdinalParam;

    move-result-object v2

    const-class v3, Ljava/lang/String;

    .line 591
    const-string v5, "scopes"

    invoke-static {v3, v5}, Lcom/afwsamples/testdpc/util/flags/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$OrdinalParam;

    move-result-object v3

    invoke-static {v3}, Lcom/afwsamples/testdpc/util/flags/Flags;->repeated(Lcom/afwsamples/testdpc/util/flags/Flags$OrdinalParam;)Lcom/afwsamples/testdpc/util/flags/Flags$RepeatedOrdinalParam;

    move-result-object v3

    .line 589
    const-string v5, "set-delegated-scopes"

    invoke-static {v5, v1, v2, v3}, Lcom/afwsamples/testdpc/util/flags/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback2Params;Lcom/afwsamples/testdpc/util/flags/Flags$Param;Lcom/afwsamples/testdpc/util/flags/Flags$Param;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 592
    const-string v2, "Delegates the given scopes to an app."

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 588
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    .line 593
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda80;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda80;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    const-class v2, Ljava/lang/String;

    .line 595
    invoke-static {v2, v6}, Lcom/afwsamples/testdpc/util/flags/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$OrdinalParam;

    move-result-object v2

    .line 594
    const-string v3, "get-delegated-scopes"

    invoke-static {v3, v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback1Params;Lcom/afwsamples/testdpc/util/flags/Flags$Param;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 596
    const-string v2, "Gets the scopes delgated to an app."

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 593
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    .line 597
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda81;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda81;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    const-class v2, Ljava/lang/String;

    .line 599
    const-string v3, "scope"

    invoke-static {v2, v3}, Lcom/afwsamples/testdpc/util/flags/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$OrdinalParam;

    move-result-object v2

    .line 598
    const-string v3, "get-delegate-packages"

    invoke-static {v3, v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback1Params;Lcom/afwsamples/testdpc/util/flags/Flags$Param;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 600
    const-string v2, "Gets the apps that were delegate a given scope."

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 597
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    .line 601
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda82;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda82;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    const-class v2, Ljava/lang/String;

    .line 602
    const-string v3, "newPassword"

    invoke-static {v2, v3}, Lcom/afwsamples/testdpc/util/flags/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$OrdinalParam;

    move-result-object v2

    const-string v3, "set-password"

    invoke-static {v3, v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback1Params;Lcom/afwsamples/testdpc/util/flags/Flags$Param;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 603
    const-string v2, "Resets password to a given one. Requires an active token"

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 601
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    .line 604
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda83;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda83;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    .line 605
    const-string v2, "clear-password"

    invoke-static {v2, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback0Params;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 606
    const-string v2, "Resets password to an empty one. Requires an active token"

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 604
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    .line 610
    invoke-static {}, Lcom/afwsamples/testdpc/common/Util;->isAtLeastS()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 611
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda190;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda190;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 615
    invoke-static {v2, v4}, Lcom/afwsamples/testdpc/util/flags/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$OrdinalParam;

    move-result-object v2

    .line 612
    const-string v3, "set-usb-data-signaling-enabled"

    invoke-static {v3, v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback1Params;Lcom/afwsamples/testdpc/util/flags/Flags$Param;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 616
    const-string v2, "Enable / disable USB data signaling."

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 611
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    .line 617
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda191;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda191;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    .line 618
    const-string v2, "can-usb-data-signaling-be-disabled"

    invoke-static {v2, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback0Params;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 621
    const-string v2, "Check if USB data signaling can be disabled."

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 617
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    .line 622
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda192;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda192;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    const-class v2, Ljava/lang/String;

    .line 626
    const-string v3, "methods"

    invoke-static {v2, v3}, Lcom/afwsamples/testdpc/util/flags/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$OrdinalParam;

    move-result-object v2

    invoke-static {v2}, Lcom/afwsamples/testdpc/util/flags/Flags;->repeated(Lcom/afwsamples/testdpc/util/flags/Flags$OrdinalParam;)Lcom/afwsamples/testdpc/util/flags/Flags$RepeatedOrdinalParam;

    move-result-object v2

    .line 623
    const-string v3, "set-permitted-input-methods-parent"

    invoke-static {v3, v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback1Params;Lcom/afwsamples/testdpc/util/flags/Flags$Param;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 627
    const-string v2, "Set the permitted input methods in the parent\'s device admin."

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 622
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    .line 628
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda193;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda193;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    .line 629
    const-string v2, "list-foreground-users"

    invoke-static {v2, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback0Params;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 630
    const-string v2, "List the users running in the foreground."

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 628
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    .line 631
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda194;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda194;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    .line 632
    const-string v2, "is-foreground-user"

    invoke-static {v2, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback0Params;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 633
    const-string v2, "Checks if the calling user is running in the foreground."

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 631
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    .line 634
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda195;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda195;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    const-class v2, Ljava/lang/String;

    .line 638
    const-string v3, "disabled-packages"

    invoke-static {v2, v3}, Lcom/afwsamples/testdpc/util/flags/Flags;->ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$OrdinalParam;

    move-result-object v2

    invoke-static {v2}, Lcom/afwsamples/testdpc/util/flags/Flags;->repeated(Lcom/afwsamples/testdpc/util/flags/Flags$OrdinalParam;)Lcom/afwsamples/testdpc/util/flags/Flags$RepeatedOrdinalParam;

    move-result-object v2

    .line 635
    const-string v3, "set-metered-data-disabled-packages"

    invoke-static {v3, v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback1Params;Lcom/afwsamples/testdpc/util/flags/Flags$Param;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 639
    const-string v2, "Restricts packages from using metered data."

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 634
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    .line 640
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda196;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda196;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    .line 641
    const-string v2, "get-metered-data-disabled-packages"

    invoke-static {v2, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback0Params;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 642
    const-string v2, "List the packages restricted from using metered data."

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 640
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    .line 643
    new-instance v1, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda197;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/ShellCommand$$ExternalSyntheticLambda197;-><init>(Lcom/afwsamples/testdpc/ShellCommand;)V

    .line 644
    const-string v2, "get-secondary-users"

    invoke-static {v2, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/flags/Flags$CommandCallback0Params;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 645
    const-string v2, "List all UserHandles of secondary users on the device."

    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 643
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->addCommand(Lcom/afwsamples/testdpc/util/flags/Flags$RegisteredCommand$Builder;)V

    .line 649
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand;->mArgs:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/flags/Flags;->run([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 654
    goto :goto_0

    .line 650
    :catch_0
    move-exception v1

    .line 653
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/afwsamples/testdpc/ShellCommand;->mArgs:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const-string v2, "error executing %s"

    invoke-direct {p0, v1, v2, v3}, Lcom/afwsamples/testdpc/ShellCommand;->onError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 655
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
