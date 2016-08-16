#include <devioctl.h>
#include <ntifs.h>
#include <ntstrsafe.h>
#include <wdmsec.h>

DRIVER_INITIALIZE DriverEntry;

#ifdef ALLOC_PRAGMA
#pragma alloc_text(INIT, DriverEntry)
#endif

NTSTATUS DriverEntry(
    PDRIVER_OBJECT DriverObject, PUNICODE_STRING RegistryPath)
{
    (VOID)DriverObject;
    (VOID)RegistryPath;
    return STATUS_NOT_IMPLEMENTED;
}
