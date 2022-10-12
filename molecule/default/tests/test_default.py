"""Module containing the tests for the default scenario."""

# Standard Python Libraries
import os

# Third-Party Libraries
import pytest
import testinfra.utils.ansible_runner

testinfra_hosts = testinfra.utils.ansible_runner.AnsibleRunner(
    os.environ["MOLECULE_INVENTORY_FILE"]
).get_hosts("all")


@pytest.mark.parametrize(
    "f",
    ["/opt/assessor-workbench", "/opt/assessor-workbench/docker-compose.yml"],
)
def test_files(host, f):
    """Test that the expected files and directories are present."""
    assert host.file(f).exists


@pytest.mark.parametrize("f", ["/tmp/assessor-workbench-python-v1.1.1_test.tgz"])
def test_files2(host, f):
    """Test that the expected files and directories were deleted."""
    assert not host.file(f).exists
